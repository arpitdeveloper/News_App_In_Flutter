// ignore_for_file: unnecessary_new, non_constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Mytopic(),
  ));
}

// ignore: camel_case_types
class Mytopic extends StatefulWidget {
  const Mytopic({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _State createState() => _State();
}

class _State extends State<Mytopic> {
  List<Student> students = [
    Student(name: "COVID-19"),
    Student(name: "MENTAL HEALTH"),
    Student(name: "CANADIAN POLITICS"),
    Student(name: "ECONOMICS")
  ];

  // bool _isVisible = true;

  // void showToast() {
  //   setState(() {
  //     _isVisible = !_isVisible;
  //   });
  // }
  var selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 160.10, //set your height
        flexibleSpace: SafeArea(
          child: Container(
            color: const Color(0xFFF5F5F5), // set your color
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 10, left: 5),
                      child: IconButton(
                        icon: const Icon(
                          // <-- Icon

                          Icons.arrow_back_ios,
                          color: Color.fromARGB(255, 204, 192, 192),
                          size: 24.0,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 7),
                      child: const Text(
                        'BACK',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  margin: const EdgeInsets.only(top: 10, left: 20.0),
                  child: const Text(
                    'My Topics',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 33,
                        fontWeight: FontWeight.w300,
                        fontFamily: "PlayfairDisplay"),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 3,
                  ),
                  width: 350.0,
                  height: 3.0,
                  color: Colors.orange,
                ), // set an icon or image
                // set your search bar setting
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
          itemCount: students.length,
          itemBuilder: (BuildContext ctx, index) {
            return SizedBox(
              height: 150,
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                              left: 30, top: 5, bottom: 10),
                          child: Text(
                            students[index].name,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          margin: const EdgeInsets.only(
                            left: 30,
                          ),
                          child: selectedIndex == index
                              ? Container(
                                  margin: const EdgeInsets.only(left: 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/plus.png',
                                        height: 20.0,
                                        alignment: Alignment.topRight,
                                      ),
                                    ),
                                  ),
                                )
                              : Container(
                                  margin: const EdgeInsets.only(left: 0),
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedIndex = index;
                                      });
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(0.0),
                                      child: Image.asset(
                                        'assets/images/right.png',
                                        height: 20.0,
                                        alignment: Alignment.topRight,
                                      ),
                                    ),
                                  ),
                                ),
                        ),
                      ])
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10, left: 20),
                    width: 350.0,
                    height: 1.0,
                    color: Colors.black,
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class Student {
  String name;

  Student({required this.name});
}
