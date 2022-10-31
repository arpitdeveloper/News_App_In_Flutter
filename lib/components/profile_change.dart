// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api, unnecessary_const, camel_case_types

import 'package:flutter/material.dart';

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
                onPressed: () {},
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
        Container(
          height: 70, width: 70,
          margin: const EdgeInsets.only(top: 20, left: 20),
          // Border width
          decoration:
              const BoxDecoration(color: Colors.black, shape: BoxShape.circle),
          child: ClipOval(
            child: SizedBox.fromSize(
              size: const Size.fromRadius(48), // Image radius
              child: Image.asset(
                'assets/images/user.png',
                height: 80.0,
                alignment: Alignment.center,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 30, top: 15),
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
          margin: const EdgeInsets.only(left: 30, top: 5),
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
              onPressed: () {},
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
              onPressed: () {},
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
