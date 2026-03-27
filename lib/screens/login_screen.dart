import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:easaypay/screens/main_screen.dart';
import 'package:easaypay/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({
    super.key,
    required this.username,
    required this.password,
    required this.name,
  });
  final String username;
  final String password;
  final String name;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  bool isObsecure = false;
  //controller
  TextEditingController _emailControllerLogin = TextEditingController();
  TextEditingController _passwordControllerLogin = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logoeasaypay.png'),
                  SizedBox(width: 10),
                  Text(
                    "Easay Pay",
                    style: GoogleFonts.poppins(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Image.asset('assets/MThirdn.png', scale: 1.6),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      // border: Border.all(
                      //   width: 4
                      // )
                    ),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(border: Border.all(width: 4)),
                  ),
                  SizedBox(width: 5),
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      // border: Border.all(
                      //   width: 4
                      // )
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              //login text
              Text(
                "Welcome Back!",
                style: GoogleFonts.poppins(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Login",
                style: GoogleFonts.poppins(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 50),
              //login form
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: validateEmailLogin,
                        controller: _emailControllerLogin,
                        decoration: InputDecoration(
                          label: Text("Email"),
                          prefixIcon: Icon(Icons.email_rounded),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: validatePasswordLogin,
                        obscureText: isObsecure,
                        controller: _passwordControllerLogin,
                        decoration: InputDecoration(
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: (){
                              setState(() {
                                isObsecure = !isObsecure;
                              });
                            },
                            icon: Icon(
                              isObsecure
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 50),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            DelightToastBar(
                               snackbarDuration: const Duration(seconds: 3),
                              builder: (context) => const ToastCard(
                                leading: Icon(Icons.lock_open_sharp, size: 28),
                                title: Text(
                                  "Login Succsessfully!",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              autoDismiss: true,
                            ).show(context);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    MainScreen(FullName: widget.name),
                              ),
                            );
                          }else{
                            DelightToastBar(
                            snackbarDuration: const Duration(seconds: 3),
                          builder: (context) => const ToastCard(
                            leading: Icon(Icons.person_3, size: 28),
                            title: Text(
                              "Please check details",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          autoDismiss: true,
                        ).show(context);
                          }
                        },
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black87,
                          ),
                          child: Center(
                            child: Text(
                              "Login",
                              style: GoogleFonts.poppins(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //dont have account signup page rederect
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Your don't have account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => SignupScreen()),
                      );
                    },
                    child: Text("Sign Up"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? validateEmailLogin(String? value) {
    if (value == null && value!.isEmpty) {
      return "please enter your email";
    }
    //compare with signup details
    if (value != widget.username) {
      return "Invailid Email";
    }
    return null;
  }

  String? validatePasswordLogin(String? value) {
    if (value == null && value!.isEmpty) {
      return "please enter your name";
    }

    if (value != widget.password) {
      return "Invailid password";
    }
    //compare with sign up details
    return null;
  }
}
