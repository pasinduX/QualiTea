import 'package:flutter/material.dart';
import 'package:testapp/uploadImage.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 9, 58, 7),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 1.6,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 195, 255, 160),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(70)),
                  ),
                  child: Center(
                    child: Image.asset(
                      "lib/images/logo.png",
                      alignment: Alignment.topCenter,
                      scale: 2,
                    )
                  ),
                ),
                // Padding(
                //   padding: EdgeInsets.all(120),
                //   child: Container(
                //     width: MediaQuery.of(context).size.width,
                //     height: MediaQuery.of(context).size.height / 3,
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage("lib/images/tea.png"),
                //         // fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.666,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 195, 255, 160),
                  )),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 9, 58, 7),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                    )),
                child: Column(
                  children: [
                    SizedBox(height: 12),
                    Text(
                      "Get to know tea with QualiTea",
                      
                      style: GoogleFonts.lobster(
                        textStyle: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Color.fromARGB(255, 195, 255, 160),
                      ),
                      ),
                    ),
                    SizedBox(height: 60),
                    Material(
                      color: Color.fromARGB(255, 195, 255, 160),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => uploadImage()));
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 15, horizontal: 50),
                          child: Text(
                            "Get Start",
                            style: TextStyle(
                              color: Color.fromARGB(255, 9, 58, 7),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
