import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.FullName});
  final String FullName;
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8F8F8),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
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
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text("Hi,${widget.FullName}",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                        Text("Your available balance",style:GoogleFonts.poppins(
                          color: Colors.black38,
                          fontSize: 16
                        ),),
                      ],
                    ),
                    Text("₹200",style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),)
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //top up w
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(7)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 23),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.add_circle_outline,color: Colors.white,),
                            Text("Top Up",style: GoogleFonts.poppins(
                              color: Colors.white
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.send,color: Colors.white,),
                            Text("Send",style: GoogleFonts.poppins(
                              color: Colors.white
                            ),)
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.compress_outlined,color: Colors.white,),
                            Text("Withdraw",style: GoogleFonts.poppins(
                              color: Colors.white
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //icons container 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 180,
                  width: double.infinity,
                  decoration: BoxDecoration(
                   color: Colors.white,
                   borderRadius: BorderRadius.circular(10),
                   border: BoxBorder.all(
                    width: 2
                   )
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                           Column(
                            children: [
                               Icon(Icons.public),
                               Text("Internet")
                            ],
                           ),
                           Column(
                            children: [
                              Icon(Icons.water_drop),
                               Text("Water")
                            ],
                           ),
                           Column(
                            children: [
                              Icon(Icons.bolt),
                               Text("Electricity")
                            ],
                           ),
                           Column(
                            children: [
                              Icon(Icons.tv),
                               Text("TV Cable")
                            ],
                           ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Icon(Icons.directions_car),
                               Text("Vehicle")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.home),
                               Text("Rent Bill")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.account_balance),
                               Text("Invest")
                              ],
                            ),
                            Column(
                              children: [
                                Icon(Icons.grid_view),
                               Text("More")
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //50% deals withdraw
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      width: double.infinity,
                      height:150,
                      decoration: BoxDecoration(
                       color: Color(0xFFFCB3C5),
                       borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        children: [
                          Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("50% OFF \nSummer special deal",style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(" Get discount for every \n transiction",style: GoogleFonts.poppins(
              
                              ),),
                            ),
                          ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.asset('assets/girl.png',scale:0.5,),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              //navv
          
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Recent Transiction",style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    Text("See All",style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //transiction list
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height:80,
                  width:double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: BoxBorder.all(
                      width: 2
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                             Image.asset('assets/CapNewImage.png'),
                          ],
                        ),
                        Column(
                          children: [
                            Text("Raj K",style:GoogleFonts.poppins(
                              fontSize: 16
                            ),),
                            Text("February 24,2022",style:GoogleFonts.poppins(
                              fontSize: 16
                            ),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text("₹240.00",style:GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
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