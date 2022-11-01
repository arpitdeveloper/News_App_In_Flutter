// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api, unnecessary_const, camel_case_types

import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';
// ignore: depend_on_referenced_packages
import 'package:image_picker/image_picker.dart';
import 'package:rk_news/bottom_tab/page3.dart';
import 'package:rk_news/components/mytopic.dart';

void main() => runApp(Profile_change());

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class Profile_change extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  File? image;

  Future pickImage() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);

      if (image == null) return;

      final imageTemp = File(image.path);

      setState(() => this.image = imageTemp);
      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    } on PlatformException {
      // print('Failed to pick image: $e');
    }
  }

  Future pickImageC() async {
    try {
      final image = await ImagePicker().pickImage(source: ImageSource.camera);

      if (image == null) return;

      // final imageTemp = File(image.path);

      setState(() => this.image = File(image.path));
      // ignore: empty_catches
    } on PlatformException {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
          child: ListView(children: <Widget>[
        Row(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10, left: 5),
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: const Icon(
                  // <-- Icon

                  Icons.arrow_back_ios,
                  color: Color.fromARGB(255, 204, 192, 192),
                  size: 18.0,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page3()),
                  );
                },
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 7),
              child: const Text(
                'BACK',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Container(
            margin: const EdgeInsets.only(top: 5, bottom: 12),
            width: 80.0,
            height: 80.0,
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
        Container(
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.center,
          child: const Text(
            'JOHN SMITH',
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                fontFamily: "PlayfairDisplay"),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(top: 5),
          alignment: Alignment.center,
          child: const Text(
            'MEMBER SINCE 5 MAY 2022',
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 204, 192, 192)),
          ),
        ),
        Container(
            height: 35,
            margin: const EdgeInsets.only(
              top: 10.0,
            ),
            padding: const EdgeInsets.fromLTRB(135, 0, 135, 0),
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
                            Container(
                              margin: const EdgeInsets.only(top: 25, left: 20),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.network(
                                      'https://icons.veryicon.com/png/o/miscellaneous/student/false.png',
                                      width: 16.0,
                                      height: 16.0),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 25, left: 120),
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
                                margin:
                                    const EdgeInsets.only(top: 25, left: 80),
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
                                                BorderRadius.circular(5.0)),
                                        backgroundColor:
                                            Colors.white, // Background color
                                      ),
                                      child: const Text(
                                        'SAVE',
                                        style: TextStyle(
                                            fontSize: 7,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black),
                                      ),
                                      onPressed: () {},
                                    ))),
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
                            margin: const EdgeInsets.only(top: 40, bottom: 12),
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
                          margin: const EdgeInsets.only(top: 40, left: 35.0),
                          child: const Text(
                            'NAME',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                fontFamily: "PlayfairDisplay"),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 35.0, right: 35),
                          child: const TextField(
                            textAlign: TextAlign.start,
                          ),
                        )
                      ])),
                );
              },
            )),
        Container(
          margin: const EdgeInsets.only(top: 40, left: 35.0),
          child: const Text(
            'SUPPORT',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
                fontFamily: "PlayfairDisplay"),
          ),
        ),
        Container(
            height: 50,
            margin: const EdgeInsets.only(top: 20.0, left: 30.0),
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    topLeft: Radius.circular(10),
                  ),
                ),

                backgroundColor: Colors.white, // Background color
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              onPressed: () {},
            )),
        Container(
            height: 50,
            margin: const EdgeInsets.only(left: 30.0),
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),

                backgroundColor: Colors.white, // Background color
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Send us Feedback',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              onPressed: () {},
            )),
        Container(
            height: 50,
            margin: const EdgeInsets.only(left: 30.0),
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                backgroundColor: Colors.white, // Background color
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Terms and Services',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              onPressed: () {},
            )),
        Container(
          margin: const EdgeInsets.only(top: 40, left: 35.0),
          child: const Text(
            'Account',
            style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.w300,
                fontFamily: "PlayfairDisplay"),
          ),
        ),
        Container(
            height: 50,
            margin: const EdgeInsets.only(top: 10.0, left: 30.0),
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(6),
                    topLeft: Radius.circular(6),
                    bottomLeft: Radius.circular(6),
                    bottomRight: Radius.circular(6),
                  ),
                ),

                backgroundColor: Colors.white, // Background color
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Manage Subscribed Topics',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mytopic()),
                );
              },
            )),
        Container(
            height: 40,
            margin: const EdgeInsets.only(left: 30.0, top: 30),
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),

                backgroundColor: const Color(0xFFD9534F), // Background color
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Send us Feedback',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              onPressed: () {},
            )),
        Container(
            height: 40,
            margin: const EdgeInsets.only(left: 30.0, top: 30, bottom: 30),
            padding: const EdgeInsets.fromLTRB(0, 0, 15, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.red),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0)),
                backgroundColor: const Color(0xFFF5F5F5),
              ),
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Terms and Services',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              onPressed: () {},
            )),
      ])),
    );
  }
}
