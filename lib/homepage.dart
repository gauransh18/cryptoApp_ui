// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'routes.dart';
import 'contants.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.blue[300]
        color: Color(0xFF48C5FF),
        //color: Colors.transparent
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Title Section
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Container(
                    child: Text(
                      startTitle,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSans(
                        shadows: [
                          Shadow(
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
              ).animate().slideX(
                  duration: Duration(milliseconds: 500), begin: -1, end: 0),
              // Description Section
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(14, 0, 14, 14),
                  child: SizedBox(
                    height: 140,
                    child: AnimatedTextKit(
                      totalRepeatCount: 1,
                      pause: Duration(milliseconds: 1000),
                      animatedTexts: [
                        WavyAnimatedText(
                          '',
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.gruppo(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 21,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                        TyperAnimatedText(
                          startText,
                          textAlign: TextAlign.center,
                          textStyle: GoogleFonts.gruppo(
                            textStyle: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontSize: 21,
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ).animate().slideX(
                  duration: Duration(milliseconds: 500),
                  begin: -1,
                  end: 0,
                  delay: Duration(milliseconds: 500)),
              // Button Section
              
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  width: 250,
                  height: 75,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamedAndRemoveUntil(
                          routeOne,
                          (route) => false,
                        );
                      },
                      child: Container(
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
                ),
              ).animate().slideX(
                  duration: Duration(milliseconds: 500),
                  begin: -2,
                  end: 0,
                  delay: Duration(milliseconds: 1000)),
            ],
          ),
        ),
      ),
    );
  }
}
