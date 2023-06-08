// ignore_for_file: prefer_const_constructors

import 'package:crypto_ui/contants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'routes.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue[300],
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    child: Text('THE BEST\nPLATFORM\nCRYPTO',
                        textAlign: TextAlign.center,
                        style:
                        //  TextStyle(
                        //   fontFamily: 'Futura',
                        //   fontSize: 65,
                        //   color: Colors.white,
                        //   shadows: [
                        //     Shadow(
                        //       //    blurRadius: 10.0,
                        //       color: Colors.black,
                        //       offset: Offset(4, 4),
                        //     ),
                        //   ],
                        // )

                        GoogleFonts.notoSans(
                          shadows: [
                            Shadow(
                              //    blurRadius: 10.0,
                              color: Colors.black,
                              offset: Offset(4, 4),
                            ),
                          ],
                          textStyle: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 65,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(14, 0, 14, 14),
                  //  width: 250.0,
                  child: SizedBox(
                    height: 100,
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                            'Our crptocurrency selling service allows you to easily and securely buy and sell a variety of digital currencies. Anytime and anywhere',
                            textAlign: TextAlign.center,
                            textStyle: GoogleFonts.gruppo(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 21,
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                child: Container(
                  width: 250,
                  height: 75,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            routeOne, (route) => false);
                      },
                      child: Container(
                        // width: 250,
                        //   height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              offset: Offset(4, 4),
                              //   blurRadius: 4,
                            ),
                          ],
                          color: bg_white,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(0),
                            child: Text(
                              'Go for crypto',
                              style: GoogleFonts.gruppo(
                                color: txt_black,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  //             Stack(children: [
                  //               ElevatedButton(
                  //                 onPressed: () {},
                  //                 child: Text(
                  //                   'Get Started',
                  //                   style: GoogleFonts.gruppo(
                  //                     color: Colors.black,
                  //                     fontSize: 20,
                  //                     fontWeight: FontWeight.normal,
                  //                   ),
                  //                 ),
                  //                 style: ElevatedButton.styleFrom(
                  //                   elevation: 0,
                  //                   shadowColor: Colors.transparent,
                  //                   primary: Colors.white,
                  //                   shape: RoundedRectangleBorder(
                  //                       borderRadius: BorderRadius.circular(12.0),
                  //                       side: BorderSide(width: 2, color: Colors.black)),
                  //                 ),
                  //               ),
                  //               Positioned.fill(
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //       boxShadow: [
                  //         BoxShadow(
                  //           color: Colors.black.withOpacity(0.5),
                  //           offset: Offset(4, 4),
                  //           blurRadius: 4,
                  //         ),
                  //       ],
                  //       borderRadius: BorderRadius.circular(12.0),
                  //       color: Colors.transparent,
                  //     ),
                  //   ),
                  // ),
                  //             ]),
                ),
              ),
            ]),
          )

          // bottomSheet: Container(
          //   width: double.infinity,
          //   height: 50,

          //   child: Center(
          //     child: Image.asset('assets/grass.png', height: 30, width: 30,),
          //   ),
          // ),
          ),
    );
  }
}
