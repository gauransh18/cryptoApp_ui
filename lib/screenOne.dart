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
            SizedBox(height: 20),
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
              padding: EdgeInsets.fromLTRB(20, 18, 20, 0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  color: bg_white,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(14.0, 20, 0, 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'My Balance',
                              style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                                color: txt_grey,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "\$ ${balance}",
                              style: GoogleFonts.montserrat(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: txt_black,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 14),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ElevatedButton(
                              onPressed: () {
                                // Perform button action
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.amber[
                                    600], // Set the button color to amber
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              child: Container(
                                width: 150,
                                alignment: Alignment.center,
                                child: Text(
                                  'Refresh Balance',
                                  style: GoogleFonts.montserrat(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(16),
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
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.money),
                          onPressed: () {
                            // Perform card action
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                  color: bg_white,
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                    width: 2,
                  ),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'My Card',
                            style: GoogleFonts.montserrat(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              color: txt_grey,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Card Details',
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: txt_black,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Card Number: **** **** **** 1234',
                            style: GoogleFonts.montserrat(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: txt_black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.all(16),
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
                            ),
                          ],
                        ),
                        child: IconButton(
                          icon: Icon(Icons.credit_card),
                          onPressed: () {
                            // Perform card action
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 80,
                width: double.infinity,
                color: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.local_offer,
                        color: bg_white,
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Limited Time Offer: Get 5\$ cash back on your first Purchase!',
                          style: GoogleFonts.varelaRound(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: bg_white,
                          ),
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
    );
  }
}
