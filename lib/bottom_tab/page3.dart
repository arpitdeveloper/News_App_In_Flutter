// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:rk_news/bargraph.dart';
import 'package:rk_news/components/Bias.dart';
import 'package:rk_news/components/profile_change.dart';

void main() => runApp(Page3());

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class Page3 extends StatelessWidget {
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
        body: ListView(children: <Widget>[
          SizedBox(
            height: 170,
            width: 200,
            child: Card(
              elevation: 15,
              color: Colors.white,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          height: 70, width: 70,
                          margin: const EdgeInsets.only(top: 20, left: 20),
                          // Border width
                          decoration: const BoxDecoration(
                              color: Colors.black, shape: BoxShape.circle),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              margin: const EdgeInsets.only(left: 30, top: 15),
                              child: const Text(
                                'JOHN SMITH',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700,
                                    fontFamily: "PlayfairDisplay"),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 30, top: 5),
                              child: const Text(
                                'MEMBER SINCE 5 MAY 2022',
                                style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w700,
                                    color: Color.fromARGB(255, 204, 192, 192)),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 20),
                          child: new IconButton(
                            icon: const Icon(
                              // <-- Icon

                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 204, 192, 192),
                              size: 15.0,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Profile_change()),
                              );
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 350,
            width: 200,
            child: Card(
              elevation: 15,
              color: Colors.white,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 15, left: 10),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.balance,
                            size: 20.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 15),
                          child: const Text(
                            'BIAS BREAKDOWN',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 130),
                          child: new IconButton(
                            icon: const Icon(
                              // <-- Icon

                              Icons.arrow_forward_ios,
                              color: Color.fromARGB(255, 204, 192, 192),
                              size: 15.0,
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Bias()),
                              );
                            },
                          ),
                        ),
                        // new Container(
                        //   margin: const EdgeInsets.only(top: 10, left: 170),
                        //   child: new IconButton(
                        //     icon: const Icon(
                        //       // <-- Icon

                        //       Icons.arrow_forward_ios,
                        //       color: Color.fromARGB(255, 204, 192, 192),
                        //       size: 15.0,
                        //     ),
                        //     onPressed: () {/* Your code */},
                        //   ),
                        // )
                      ],
                    ),
                    const Expanded(
                      child:
                          Bargraph(left: 50.00, right: 110.00, center: 150.00),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 350,
            width: 200,
            child: Card(
              elevation: 15,
              color: Colors.white,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 10),
                          child: Image.asset(
                            'assets/images/news.png',
                            height: 30.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 15),
                          child: const Text(
                            'TOP PUBLICATIONS',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 180),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 204, 192, 192),
                            size: 15.0,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            margin: const EdgeInsets.only(
                              top: 60,
                            ),
                            child: Image.network(
                              "https://www.parsintl.com/wp-content/uploads/2022/01/NYT-logo.jpg",
                              width: 210.0,
                              alignment: Alignment.center,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  left: 120,
                                  top: 7,
                                ),
                                child: Image.network(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/6/67/CBC_Logo_1992-Present.svg/1200px-CBC_Logo_1992-Present.svg.png",
                                  height: 30.0,
                                  width: 30.0,
                                  alignment: Alignment.topRight,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 7, left: 10),
                                child: const Text(
                                  'CBC',
                                  style: TextStyle(
                                    fontSize: 35,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 350,
            width: 200,
            child: Card(
              elevation: 15,
              color: Colors.white,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 12,
                          ),
                          child: Image.asset(
                            'assets/images/category.png',
                            height: 20.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 15),
                          child: const Text(
                            'TOP CATEGORIES',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 180),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 204, 192, 192),
                            size: 15.0,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 40.0, bottom: 3.0),
                      alignment: Alignment.center,
                    ),
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          new SizedBox(
                            width: 170.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 15 // Background color
                                  ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('HEALTH',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 30.0, bottom: 3.0),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            width: 170.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white, elevation: 15),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('TECH',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(top: 30.0, bottom: 3.0),
                            alignment: Alignment.center,
                          ),
                          new SizedBox(
                            width: 170.0,
                            height: 40.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 15 // Background color
                                  ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('SCIENCE',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )), // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 170,
            width: 200,
            child: Card(
              elevation: 15,
              color: Colors.white,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                            left: 10,
                            top: 12,
                          ),
                          child: Image.asset(
                            'assets/images/time.png',
                            height: 25.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 10, top: 10),
                          child: const Text(
                            'RECENTLY VIEWED',
                            style: TextStyle(
                              fontSize: 11,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10, left: 180),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.arrow_forward_ios,
                            color: Color.fromARGB(255, 204, 192, 192),
                            size: 15.0,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, bottom: 3.0),
                            alignment: Alignment.center,
                          ),
                          new SizedBox(
                            width: 60.0,
                            height: 25.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.blue,
                                // Background color
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('LEFT',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 20.0,
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            width: 70.0,
                            height: 25.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFA1A1A1),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('RIGHT',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10.0,
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            width: 80.0,
                            height: 25.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFA1A1A1),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('CENTER',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )), // <-- Text
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin:
                                const EdgeInsets.only(left: 10.0, bottom: 3.0),
                            alignment: Alignment.center,
                          ),
                          new SizedBox(
                            width: 60.0,
                            height: 25.0,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFFA1A1A1),
                                // Background color
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  const Text('HE',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.black,
                                      )), // <-- Text
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
