import 'package:flutter/foundation.dart';
import 'package:path/path.dart';
import 'package:async/async.dart';
import 'dart:convert';

// import 'dart:html' hide File;
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:convert';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;

class uploadImage extends StatefulWidget {
  uploadImage() : super();

  final String title = "Upload Image";

  uploadImageDemo createState() => uploadImageDemo();
}

class uploadImageDemo extends State<uploadImage> {
  File? selectedImage;
  String? message = "";
  File? selectedFinalImage;

  uploadImage(File imageFile) async {
// open a bytestream
    var stream = http.ByteStream(Stream.castFrom(imageFile.openRead()));
    // get file length
    var length = await imageFile.length();

    // string to uri
    var uri = Uri.parse("http://127.0.0.1:5000/success");

    // create multipart request
    var request = new http.MultipartRequest("POST", uri);

    // multipart that takes file
    var multipartFile = new http.MultipartFile('file', stream, length,
        filename: basename(imageFile.path));

    // add file to multipart
    request.files.add(multipartFile);

    // send
    var response = await request.send();
    print(response.statusCode);

    // listen for response
    response.stream.transform(utf8.decoder).listen((value) {
      print(value);
    });

    // final request = http.MultipartRequest("POST", Uri.parse("http://127.0.0.1:5000"));

    // // final headers = {"Content-type": "mulipart/form-data"};
    // Map<String, String> headers = {"Content-type": "multipart/form-data"};

    // request.files.add(
    //   http.MultipartFile(
    //     'image',
    //     selectedImage.readAsBytes().asStream(),
    //     selectedImage.lengthSync(),
    //     filename: selectedImage.path.split('/').last,
    //   ),
    // );

    // request.headers.addAll(headers);
    // final response = await request.send();
    // http.Response res = await http.Response.fromStream(response);
    // final resJson = jsonDecode(res.body);
    // message = resJson['message'];
    // setState(() {});
  }

  getImage() async {
    final pickedImage =
        await ImagePicker().getImage(source: ImageSource.gallery);
    // selectedImage = File(pickedImage!.path);
    // selectedFinalImage = File(pickedImage.path);
    setState(() {
      selectedImage = File(pickedImage!.path);
    });
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
            selectedImage == null
                ? Text(
                    "Please upload the image you wish to get information of.")
                : Container(
                    height: 260.0,
                    width: 260.0,
                    child: kIsWeb
                        ? Image.network(selectedImage!.path)
                        : Image.file(selectedImage!),
                  ),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: TextButton.icon(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Color.fromARGB(255, 9, 58, 7),
                  ),
                ),
                onPressed: () {
                  if (selectedImage != null) {
                    uploadImage(selectedImage!);
                  }

                  showModalBottomSheet(
                      context: context,
                      // isDismissible: false,
                      backgroundColor: Color.fromARGB(255, 195, 255, 160),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30),
                      )),
                      builder: ((BuildContext context) {
                        return Container(
                          height: 270,
                          child: ListView(
                            children: [
                              DataTable(
                                columns: [
                                  DataColumn(
                                      label: Text(
                                    'Category',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color.fromARGB(255, 9, 58, 7),
                                        fontWeight: FontWeight.bold),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    'Probability',
                                    style: TextStyle(
                                        fontSize: 15.0,
                                        color: Color.fromARGB(255, 9, 58, 7),
                                        fontWeight: FontWeight.bold),
                                  )),
                                ],
                                rows: [
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Row 1, Column 1',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    )),
                                    DataCell(Text(
                                      'Row 1, Column 2',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Row 2, Column 1',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    )),
                                    DataCell(Text(
                                      'Row 2, Column 2',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    )),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text(
                                      'Row 2, Column 1',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    )),
                                    DataCell(Text(
                                      'Row 2, Column 2',
                                      style: TextStyle(
                                        fontSize: 13.0,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                      ),
                                    )),
                                  ]),
                                ],
                              )
                            ],
                          ),
                        );
                      }));
                },
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
                        color: Color.fromARGB(255, 9, 58, 7),
                        fontWeight: FontWeight.bold,
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
                        color: Color.fromARGB(255, 9, 58, 7),
                        fontWeight: FontWeight.bold,
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
