// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api, unnecessary_const

import 'package:flutter/material.dart';

void main() => runApp(Page4());

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class Page4 extends StatelessWidget {
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
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/scr1.png',
            height: 250,
            width: 200,
          ),
        ),
        Container(
            height: 35,
            margin: const EdgeInsets.only(),
            padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 37, 96, 197), // Background color
              ),
              child: const Text(
                'CONTINUE WITH GOOGLE',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            )),
        Container(
            height: 35,
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color
              ),
              child: const Text(
                'CONTINUE WITH APPLE',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            )),
        Container(
          margin: const EdgeInsets.only(top: 180, left: 35, right: 20),
          child: const Text(
            'BY CONTINUING ,YOUR ARE AGREE TO OUR TEAMS  AND CONDITIONS ',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 110),
          child: const Text(
            'AND UNDERSTAND PRIVATE POLICY',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ])),
    );
  }
}
