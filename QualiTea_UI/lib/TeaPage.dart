import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:quickalert/quickalert.dart';

class TeaPage extends StatelessWidget {
  const TeaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(208, 252, 170, 1),
        child: Column(
          children: [
            Spacer(),
            const Text(
              "Get to know more about tea",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 17,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 35),
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: AssetImage('images/tea.jpg'), fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                QuickAlert.show(
                    context: context,
                    title: "History of tea",
                    text:
                        "\nThe story of tea begins in China. According to legend, in 2737 BC, the Chinese emperor Shen Nung was sitting beneath a tree while his servant boiled drinking water, when some leaves from the tree blew into the water. Shen Nung, a renowned herbalist, decided to try the infusion that his servant had accidentally created.",
                    type: QuickAlertType.info);
              },
              child: Container(
                height: 50,
                width: 230,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(131, 227, 171, 1)),
                child: Center(
                  child: Text(
                    "History of tea",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {
                QuickAlert.show(
                    context: context,
                    title: "Tea manufacturing process in Srilanka",
                    text:
                        "\nThe tea manufacturing process is an intricate one that begins with the plucking of good leaf – two leaves and a bud and results in the final tea leaf that you see. Ceylon tea is manufactured predominantly using the orthodox tea manufacturing process that has been practised for over a century.",
                    type: QuickAlertType.info);
              },
              child: Container(
                height: 50,
                width: 230,
                decoration:
                    BoxDecoration(color: Color.fromRGBO(131, 227, 171, 1)),
                child: Center(
                  child: Text(
                    "Tea manufacturing\nprocess in srilanka",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 55,
              width: 250,
              decoration: BoxDecoration(color: Color.fromRGBO(44, 150, 42, 1)),
              child: Center(
                child: Text(
                  "Back to Home page",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
