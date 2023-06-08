import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'contants.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_blue,
      // appBar: AppBar(
      //   leading:
      //   ),
      //   backgroundColor: Color(0xFFf5f5f7),
      //   shadowColor: Colors.transparent,
      //   toolbarHeight: 40,
      // ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 40, 0, 0),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: bg_white,
                      shape: BoxShape.circle,
                      border: Border.all(color: txt_black, width: 2.0),
                    ),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(avatarPath),
                      backgroundColor: bg_white,
                    ),
                  ),
                ),
                Spacer(),
                Stack(children: [
                  Positioned(
                    top: 5.0,
                    right: 5.0,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 35, 12, 0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: bg_white,
                          shape: BoxShape.circle,
                          border: Border.all(color: txt_black, width: 2.0),
                        ),
                        child: ClipOval(
                          child: Material(
                            color: Colors.transparent,
                            child: IconButton(
                              icon: Icon(Icons.notes_outlined),
                              onPressed: () {
                                // Perform search action
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 40, 57, 0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: bg_white,
                        shape: BoxShape.circle,
                        border: Border.all(color: txt_black, width: 2.0),
                      ),
                      //margin: EdgeInsets.only(right: 16.0),
                      child: ClipOval(
                        child: Material(
                          color: Colors.transparent,
                          child: IconButton(
                            icon: Icon(Icons.search_sharp),
                            onPressed: () {
                              // Perform search action
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
      
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 10, 0, 0),
              child: Container(
                child: Text(
                  'Hey, ${name}',
                  style: GoogleFonts.varelaRound(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: txt_black,
                  ),
                ),
              ),
            ),
      
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 5, 0, 0),
              child: Container(
                child: Text(
                  welcomeText,
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: txt_grey,
                  ),
                ),
              ),
            ),
      
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 8, 8),
                    child: Container(
                      width: 120,
                      height: 60,
                      child: GestureDetector(
                        onTap: () {},
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
                                'Wallet',
                                style: GoogleFonts.montserrat(
                                  color: txt_black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 8, 8),
                    child: Container(
                      width: 120,
                      height: 60,
                      child: GestureDetector(
                        onTap: () {},
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
                                'NFT',
                                style: GoogleFonts.montserrat(
                                  color: txt_black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 30, 8, 8),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        color: bg_white,
                        shape: BoxShape.circle,
                        border: Border.all(color: txt_black, width: 2.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                            //   blurRadius: 4,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(Icons.emoji_emotions_outlined),
                        onPressed: () {
                          // Perform search action
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
      
            Padding(
                padding: EdgeInsets.fromLTRB(20, 18, 20,0),
                child: Container(
                  height: 200,
                  width: 400,
      
                  decoration: BoxDecoration(
                    color: bg_white,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                              color: Colors.black,
                              width: 2,
                    
                ),
                borderRadius: BorderRadius.circular(12.0),
                ),),),
           // Spacer(),
          ],
        ),
      ),
    );
  }
}

