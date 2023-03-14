import 'package:flutter/material.dart';
import 'package:testapp/uploadImage.dart';

class WelcomeScreen extends StatelessWidget{
  Widget build (BuildContext context){  
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(children: [
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
                child: Center(child: Image.asset("lib/images/logo.png", scale: 0.8,),
              ),
              ),
            ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666 ,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 195, 255, 160),
                  
                  )
                ),
              ),
              Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.666 ,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 9, 58, 7),
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70),)
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 12),
                      Text(
                        "Get to know tea with QualiTea",
                        // textAlign: TextAlign.center,
                    
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1,
                          wordSpacing: 2,
                  color: Color.fromARGB(255, 195, 255, 160),
                        ),
                        ),
                        SizedBox(height: 60),
                        Material(
                  color: Color.fromARGB(255, 195, 255, 160),
                        borderRadius: BorderRadius.circular(10),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context) => uploadImage()));
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 15,horizontal: 50),
                              child: Text(
                                "Get Start",
                                style: TextStyle(
                  color: Color.fromARGB(255, 9, 58, 7),
                                fontSize: 16,
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