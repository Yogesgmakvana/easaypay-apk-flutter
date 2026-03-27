import 'package:delightful_toast/delight_toast.dart';
import 'package:delightful_toast/toast/components/toast_card.dart';
import 'package:easaypay/screens/login_screen.dart';
import 'package:easaypay/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //easay pay logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/logoeasaypay.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Easay Pay",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 28,
                        ),)
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
            //images
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 80),
                  child: Image.asset('assets/MFirstn.png',scale: 1.6,),
                ),
                SizedBox(
                  width: 40,
                ),
                Image.asset('assets/MSecondn.png',scale: 1.6,),
              ],
            ),
            //image
            Image.asset('assets/MThirdn.png'),
            SizedBox(
              height: 20,
            ),
            //containers for bix
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4
                    )
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.black26
                    // border: Border.all(
                    //   width: 4
                    // )
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                   height: 20,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.black26
                    // border: Border.all(
                    //   width: 4
                    // )
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Easy Online Payment",style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height: 10,
            ),
            Text("Make your payment experience more better\n            today. No additional admin fee",style: GoogleFonts.poppins(
              fontSize: 16,
              
            ),),
            SizedBox(
              height: 40,
            ),
            //loginbox
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen(username: '', password: '',name: '')));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Login",style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),),
                ),
              ),
            ),
            //signup box
             Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>SignupScreen()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: BoxBorder.all(
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("Sign Up",style: GoogleFonts.poppins(
                    fontSize: 19,
                    fontWeight: FontWeight.bold
                  ),),),
                ),
              ),
            ),
            ],
          ),
        ),
      ),
    );
  }
}