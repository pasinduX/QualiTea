import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';

class uploadImage extends StatefulWidget {
  uploadImage() : super();

  final String title = "Upload Image";

  uploadImageDemo createState() => uploadImageDemo();
}

class uploadImageDemo extends State<uploadImage> {
  String? SelectedImage;
  String? message = "";

  uploadImage() {}

  Future getImage() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    SelectedImage = pickedImage!.path;
    setState(() {});
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Color.fromARGB(255, 9, 58, 7),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectedImage == null
                ? Text(
                    "Please upload the image you wish to get information of.")
                : Container(
                  height: 260.0,
                  width: 260.0,
                  child: Image.network(SelectedImage!),
                ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 9, 58, 7),
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.upload_file, color: Colors.white),
                label: Text(
                  "Upload Image",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Column(
                children: [
                  SizedBox(height: 30),
                   Container(
                  color: Color.fromARGB(255, 195, 255, 160),
                  child: Text(
                    "Our app will determine the relevant tea grade and the price range of the leaf images uploaded by you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                   ),
                  SizedBox(height: 20),
                  Container(
                  color: Color.fromARGB(255, 195, 255, 160),
                  child: Text(
                    "We will also provide you with additional information about your images based on our system's capabilities.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getImage,
        backgroundColor: Color.fromARGB(255, 9, 58, 7),
        child: Icon(
          Icons.add_a_photo,
        ),
        // foregroundColor: Color.fromARGB(255, 9, 58, 7),
      ),
    );
  }
}
