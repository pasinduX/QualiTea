import 'package:flutter/material.dart';
import 'package:testapp/uploadImage.dart';
import 'package:testapp/welcomeScreen.dart';
// import 'package:education_ui/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // title: 'Flutter Demo',
      // theme: ThemeData(
      //   scaffoldBackgroundColor: Color.fromARGB(255, 112, 21, 21),
        
      // ),
      home: WelcomeScreen(),
        //  home: HomePage(),

    );
  }
}


