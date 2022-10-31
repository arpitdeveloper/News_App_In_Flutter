// ignore_for_file: depend_on_referenced_packages, unused_import, use_build_context_synchronously

import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const Imagee());
}

class Imagee extends StatelessWidget {
  const Imagee({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.white,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      Navigator.pop(context);
    } on PlatformException {
      // ignore: avoid_print
      // print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      // ignore: empty_catches
    } on PlatformException {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Image Picker Example"),
        ),
        body: Center(
          child: Column(
            children: [
              MaterialButton(
                  color: Colors.blue,
                  child: const Text("Pick Image from Gallery",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    pickImage();
                  }),
              MaterialButton(
                  color: Colors.blue,
                  child: const Text("Pick Image from Camera",
                      style: TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.bold)),
                  onPressed: () {
                    pickImageC();
                  }),
              Container(
                height: 70, width: 70,
                margin: const EdgeInsets.only(top: 20, left: 20),
                // Border width
                decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle),

                child: ClipOval(
                  child: image != null
                      ? Image.file(
                          image!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        )
                      : Image.asset(
                          'assets/images/user.png',
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                ),
              ),
              Container(
                  height: 35,
                  margin: const EdgeInsets.only(top: 10.0, left: 30.0),
                  padding: const EdgeInsets.fromLTRB(125, 0, 125, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                      backgroundColor: Colors.white, // Background color
                    ),
                    child: const Text(
                      'EDIT PROFILE',
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                    onPressed: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => Container(
                            height: MediaQuery.of(context).size.height * 0.85,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(25.0),
                                topRight: Radius.circular(25.0),
                              ),
                            ),
                            child: ListView(children: <Widget>[
                              Row(
                                children: <Widget>[
                                  // Container(
                                  //   margin:
                                  //       const EdgeInsets.only(top: 10, left: 5),
                                  //   alignment: Alignment.topLeft,
                                  //   child: IconButton(
                                  //     icon: const Icon(
                                  //       // <-- Icon

                                  //       Icons.arrow_back_ios,
                                  //       color:
                                  //           Color.fromARGB(255, 204, 192, 192),
                                  //       size: 15.0,
                                  //     ),
                                  //     onPressed: () {
                                  //       Navigator.pop(context);
                                  //     },
                                  //   ),
                                  // ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 25, left: 20),
                                    child: GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        child: Image.network(
                                            'https://icons.veryicon.com/png/o/miscellaneous/student/false.png',
                                            width: 16.0,
                                            height: 16.0),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        top: 25, left: 120),
                                    alignment: Alignment.topCenter,
                                    child: const Text(
                                      'Edit Profile',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: "PlayfairDisplay"),
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 25, left: 80),
                                      alignment: Alignment.topRight,
                                      child: SizedBox(
                                          width: 60, // <-- Your width
                                          height: 25, // <-- Your height
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              side: const BorderSide(
                                                  color: Colors.black),
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0)),
                                              backgroundColor: Colors
                                                  .white, // Background color
                                            ),
                                            child: const Text(
                                              'SAVE',
                                              style: TextStyle(
                                                  fontSize: 7,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black),
                                            ),
                                            onPressed: () {},
                                          ))
                                      // child: IconButton(
                                      //   icon: const Icon(
                                      //     // <-- Icon

                                      //     Icons.arrow_back_ios,
                                      //     color:
                                      //         Color.fromARGB(255, 204, 192, 192),
                                      //     size: 15.0,
                                      //   ),
                                      //   onPressed: () {},
                                      // ),
                                      ),
                                ],
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 10,
                                ),
                                width: 100.0,
                                height: 1.0,
                                color: Colors.black,
                              ),
                              Center(
                                child: Container(
                                  margin: const EdgeInsets.only(
                                      top: 40, bottom: 12),
                                  width: 70.0,
                                  height: 70.0,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: ClipOval(
                                    child: image != null
                                        ? Image.file(
                                            image!,
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          )
                                        : Image.asset(
                                            'assets/images/user.png',
                                            width: 100,
                                            height: 100,
                                            fit: BoxFit.cover,
                                          ),
                                  ),
                                ),
                              ),

                              // Container(
                              //   height: 70, width: 70,
                              //   margin:
                              //       const EdgeInsets.only(top: 20, left: 20),
                              //   // Border width
                              //   decoration: const BoxDecoration(
                              //       color: Colors.black,
                              //       shape: BoxShape.circle),
                              // child: ClipOval(
                              //   child: image != null
                              //       ? Image.file(
                              //           image!,
                              //           width: 100,
                              //           height: 100,
                              //           fit: BoxFit.cover,
                              //         )
                              //       : Image.asset(
                              //           'assets/images/user.png',
                              //           width: 100,
                              //           height: 100,
                              //           fit: BoxFit.cover,
                              //         ),
                              // ),
                              // ),
                              InkWell(
                                  child: const Text(
                                    'CHANGE PROFILE PHOTO',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  onTap: () {
                                    pickImage();
                                  }),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 40, left: 35.0),
                                child: const Text(
                                  'NAME',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: "PlayfairDisplay"),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 35.0, right: 35),
                                child: const TextField(
                                  textAlign: TextAlign.start,
                                ),
                              )
                            ])
                            // child: Row(
                            //   children: <Widget>[
                            //     Container(
                            //       margin: const EdgeInsets.only(top: 10, left: 5),
                            //       alignment: Alignment.topLeft,
                            //       child: IconButton(
                            //         icon: const Icon(
                            //           // <-- Icon

                            //           Icons.arrow_back_ios,
                            //           color: Color.fromARGB(255, 204, 192, 192),
                            //           size: 15.0,
                            //         ),
                            //         onPressed: () {},
                            //       ),
                            //     ),
                            //     Container(
                            //       margin:
                            //           const EdgeInsets.only(top: 25, left: 90),
                            //       alignment: Alignment.topCenter,
                            //       child: const Text(
                            //         'Edit Profile',
                            //         textAlign: TextAlign.center,
                            //         style: TextStyle(
                            //           fontSize: 14,
                            //           fontWeight: FontWeight.w500,
                            //         ),
                            //       ),
                            //     ),
                            //     Container(
                            //       margin:
                            //           const EdgeInsets.only(top: 10, left: 110),
                            //       alignment: Alignment.topRight,
                            //       child: IconButton(
                            //         icon: const Icon(
                            //           // <-- Icon

                            //           Icons.arrow_back_ios,
                            //           color: Color.fromARGB(255, 204, 192, 192),
                            //           size: 15.0,
                            //         ),
                            //         onPressed: () {},
                            //       ),
                            //     ),
                            //   ],
                            // ),

                            ),
                      );
                    },
                  )),

              // image != null
              //     ? Image.file(image!)
              //     : const Text("No image selected")
            ],
          ),
        ));
  }
}
