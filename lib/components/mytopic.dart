// ignore_for_file: unnecessary_new, non_constant_identifier_names, file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:rk_news/components/profile_change.dart';

void main() => runApp(const Mytopic());

class Mytopic extends StatelessWidget {
  const Mytopic({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF5F5F5),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xFFF5F5F5),
            elevation: 0, // This removes the shadow from all App Bars.
          )),
      debugShowCheckedModeBanner: false,
      home: const MyNavigationBar(),
    );
  }
}

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  List<Student> students = [
    Student(name: "COVID-19"),
    Student(name: "MENTAL HEALTH"),
    Student(name: "CANADIAN POLITICS"),
    Student(name: "ECONOMICS")
  ];

  List<String> temp = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 140.10, //set your height
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Profile_change()),
                          );
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
            return Column(children: <Widget>[
              InkWell(
                  onTap: () {
                    setState(() {
                      if (temp.contains(students[index].name)) {
                        temp.remove(students[index].name);
                      } else {
                        temp.add(students[index].name);
                      }
                    });
                  },
                  child: Container(
                      margin: const EdgeInsets.only(
                        left: 20,
                      ),
                      child: ListTile(
                        title: Text(
                          students[index].name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        trailing: SizedBox(
                          height: 30,
                          width: 50,
                          child: Center(
                            child: temp.contains(students[index].name)
                                ? Image.asset(
                                    'assets/images/plus.png',
                                    width: 20,
                                    height: 20,
                                  )
                                : Image.asset(
                                    'assets/images/right.png',
                                    width: 20,
                                    height: 20,
                                  ),
                            // child: Text(temp.contains(students[index].name)
                            //     ? 'remove'
                            //     : "Add")
                          ),
                        ),
                      ))),
              Container(
                margin: const EdgeInsets.only(
                  top: 10,
                ),
                width: 350.0,
                height: 1.0,
                color: const Color.fromARGB(255, 173, 143, 143),
              ),
            ]);
          }),
    );
  }
}

class Student {
  String name;

  Student({required this.name});
}
