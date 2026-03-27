import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:easaypay/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  //for password hide and show
  bool isObsecure2 = true;
  //global key for form
  final _formKey1 = GlobalKey<FormState>();
  //controllers
  TextEditingController _fullnameControllerSignUp = TextEditingController();
  TextEditingController _emailControllerSignUp = TextEditingController();
  TextEditingController _phoneNumberControllerSignUp = TextEditingController();
  TextEditingController _createPasswordControllerSignUp =
  TextEditingController();
  TextEditingController _confirmPasswordControllerSignUp =
  TextEditingController();

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
                ],
              ),
              SizedBox(height: 20),
              Text(
                "Register",
                style: GoogleFonts.poppins(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              //register form
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                  key: _formKey1,
                  child: Column(
                    children: [
                      //full name
                      TextFormField(
                        validator: validateName,
                        controller: _fullnameControllerSignUp,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          label: Text("Full name"),
                          prefixIcon: Icon(Icons.person_2_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: validateEmail,
                        controller: _emailControllerSignUp,
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
                        validator: validatePhoneNUmber,
                        keyboardType: TextInputType.phone,
                        controller: _phoneNumberControllerSignUp,
                        decoration: InputDecoration(
                          label: Text("Phone"),
                          prefixIcon: Icon(Icons.call),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        obscureText: isObsecure2,
                        validator: validateCreatePassword,
                        controller: _createPasswordControllerSignUp,
                        decoration: InputDecoration(
                          label: Text("Create password"),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObsecure2 = !isObsecure2;
                              });
                            },
                            icon: Icon(
                              isObsecure2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        validator: validateConfirmPassword,
                        obscureText: isObsecure2,
                        controller: _confirmPasswordControllerSignUp,
                        decoration: InputDecoration(
                          label: Text("Confirm password"),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                isObsecure2 = !isObsecure2;
                              });
                            },
                            icon: Icon(
                              isObsecure2
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    if (_formKey1.currentState!.validate()) {
                      
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(
                            username: _emailControllerSignUp.text,
                            password: _confirmPasswordControllerSignUp.text,
                            name: _fullnameControllerSignUp.text,
                          ),
                        ),
                      );
                      DelightToastBar(
                          snackbarDuration: const Duration(seconds: 3),
                        builder: (context) => const ToastCard(
                          leading: Icon(Icons.person_3, size: 28),
                          title: Text(
                            "Account created Succsessfully!",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ),
                        autoDismiss: true,
                      ).show(context);
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
                      color: Colors.black87,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Create Account",
                        style: GoogleFonts.poppins(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              //dont have account signup page rederect
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("already have account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(
                            username: _emailControllerSignUp.text,
                            password: _confirmPasswordControllerSignUp.text,
                            name: _fullnameControllerSignUp.text,
                          ),
                        ),
                      );
                    },
                    child: Text("Login"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  String? validateName(String? value) {
    if (value == null && value!.isEmpty) {
      return "please enter your name";
    }

    if (value.length < 4) {
      return "please enter full name";
    }
    return null;
  }

  String? validateEmail(String? value) {
    if (value == null && value!.isEmpty) {
      return "please enter your email";
    }

    if (!value.contains('@')) {
      return "Your email not match";
    }
    return null;
  }

  String? validatePhoneNUmber(String? value) {
    if (value == null && value!.isEmpty) {
      return "please enter your Phone number";
    }

    if (value.length < 10) {
      return "please enter full number";
    }
    return null;
  }

  String? validateCreatePassword(String? value) {
    if (value == null && value!.isEmpty) {
      return "please enter your name";
    }

    if (value.length < 8) {
      return "please enter full name";
    }
    return null;
  }

  String? validateConfirmPassword(String? value) {
    if (value == null && value!.isEmpty) {
      return "please enter your name";
    }

    if (value.length < 8) {
      return "password must be greter than 8 letters";
    }

    if (value == _createPasswordControllerSignUp) {
      return "Password must be same as you created";
    }
    return null;
  }
}
