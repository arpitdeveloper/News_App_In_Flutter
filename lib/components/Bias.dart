// ignore_for_file: file_names, library_private_types_in_public_api, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:rk_news/bargraph.dart';
import 'package:rk_news/bottom_tab/page3.dart';

void main() => runApp(Bias());

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class Bias extends StatelessWidget {
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
  void initState() {
    super.initState();
    pp();
  }

  String a = "";
  void pp() {
    setState(() {
      a = "D";
    });
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
                  size: 15.0,
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
                  fontSize: 8,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(),
          child: const Text(
            'Bias Dashboard',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontFamily: "PlayfairDisplay"),
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
                  Container(
                      margin: const EdgeInsets.only(top: 20.0),
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0xFFE5E5E5),
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(
                              left: 10.0,
                            ),
                            alignment: Alignment.center,
                          ),
                          SizedBox(
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a = "D";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                foregroundColor: Colors.black,
                                backgroundColor: a == "D"
                                    ? const Color(0xFFEA7432)
                                    : const Color(0xFFE5E5E5),
                                shadowColor: Colors.greenAccent,

                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: const Size(30, 20), //////// HERE
                              ),
                              child: Text(
                                'D',
                                style: TextStyle(
                                    color:
                                        a == "D" ? Colors.white : Colors.black),
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
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a = "M";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: a == "M"
                                    ? const Color(0xFFEA7432)
                                    : const Color(0xFFE5E5E5),
                                shadowColor: Colors.greenAccent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: const Size(30, 20), //////// HERE
                              ),
                              child: Text(
                                'M',
                                style: TextStyle(
                                    color:
                                        a == "M" ? Colors.white : Colors.black),
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
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a = "3M";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: a == "3M"
                                    ? const Color(0xFFEA7432)
                                    : const Color(0xFFE5E5E5),
                                shadowColor: Colors.greenAccent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: const Size(30, 20), //////// HERE
                              ),
                              child: Text(
                                '3M',
                                style: TextStyle(
                                    color: a == "3M"
                                        ? Colors.white
                                        : Colors.black),
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
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a = "6M";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: a == "6M"
                                    ? const Color(0xFFEA7432)
                                    : const Color(0xFFE5E5E5),
                                shadowColor: Colors.greenAccent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: const Size(30, 20), //////// HERE
                              ),
                              child: Text(
                                '6M',
                                style: TextStyle(
                                    color: a == "6M"
                                        ? Colors.white
                                        : Colors.black),
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
                            child: ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  a = "Y";
                                });
                              },
                              style: ElevatedButton.styleFrom(
                                foregroundColor: Colors.black,
                                backgroundColor: a == "Y"
                                    ? const Color(0xFFEA7432)
                                    : const Color(0xFFE5E5E5),
                                shadowColor: Colors.greenAccent,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: const Size(30, 20), //////// HERE
                              ),
                              child: Text(
                                'Y',
                                style: TextStyle(
                                    color:
                                        a == "Y" ? Colors.white : Colors.black),
                              ),
                            ),
                          ),
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20.0,
                    ),
                    alignment: Alignment.center,
                  ),
                  Expanded(
                      child: (a == "D")
                          ? (const Bargraph(
                              left: 150.00, right: 10.00, center: 50.00))
                          : (a == 'M')
                              ? (const Bargraph(
                                  left: 50.00, right: 110.00, center: 150.00))
                              : (a == '3M')
                                  ? (const Bargraph(
                                      left: 20.00,
                                      right: 10.00,
                                      center: 150.00))
                                  : (a == '6M')
                                      ? (const Bargraph(
                                          left: 120.00,
                                          right: 80.00,
                                          center: 150.00))
                                      : (a == 'Y')
                                          ? (const Bargraph(
                                              left: 60.00,
                                              right: 10.00,
                                              center: 140.00))
                                          : (const Bargraph(
                                              left: 180.00,
                                              right: 150.00,
                                              center: 10.00)))
                ],
              ),
            ),
          ),
        ),
        Row(
          children: <Widget>[
            //
            Card(
              elevation: 20,
              margin: const EdgeInsets.only(left: 30.0, top: 20, bottom: 20),
              child: Container(
                height: 110,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        '100',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            fontFamily: "PlayfairDisplay"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        'Total Read',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 20,
              margin: const EdgeInsets.only(left: 20.0, top: 20, bottom: 20),
              child: Container(
                height: 110,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        '5',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            fontFamily: "PlayfairDisplay"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        'MinimunTime Spend',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        '(mins) per Article',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            //
            Card(
              elevation: 20,
              margin: const EdgeInsets.only(left: 30.0, top: 4, bottom: 20),
              child: Container(
                height: 110,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        '10',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            fontFamily: "PlayfairDisplay"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        'MaximunTime Spend',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        '(mins) per Article',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 20,
              margin: const EdgeInsets.only(left: 20.0, top: 4, bottom: 20),
              child: Container(
                height: 110,
                width: 155,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        '1.5',
                        style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w600,
                            fontFamily: "PlayfairDisplay"),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        'Average Total Time',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(),
                      child: const Text(
                        'Spend (Hrs',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ])),
    );
  }
}
