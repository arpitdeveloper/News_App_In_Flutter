// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(Page2());

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        elevation: 0, // This removes the shadow from all App Bars.
      )),
      debugShowCheckedModeBanner: false,
      home: const MyNavigationBar(),
    );
  }
}

const up = TabBar(
  isScrollable: true,
  labelColor: Colors.green,
  unselectedLabelColor: Colors.black,
  tabs: [
    Tab(text: 'World'),
    Tab(text: 'Tech'),
    Tab(text: 'Health'),
    Tab(text: 'Business'),
    Tab(text: 'Politics'),
    Tab(text: 'Sports'),
    Tab(text: 'Business'),
    Tab(text: 'Politics'),
    Tab(text: 'Sports'),
  ],
);

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
        appBar: AppBar(
          backgroundColor: const Color(0xFFF5F5F5),
          toolbarHeight: 0,
          bottom: AppBar(
            backgroundColor: const Color(0xFFF5F5F5),
            title: const SizedBox(
              width: double.infinity,
              height: 40,
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'SEARCH ...',
                    labelStyle: TextStyle(
                      color: Color.fromARGB(255, 207, 201, 201),
                      fontSize: 10,
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView(children: <Widget>[
          const DefaultTabController(length: 9, child: up),
          SizedBox(
            height: 150,
            width: 200,
            child: Card(
              color: const Color.fromARGB(255, 20, 204, 26),
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 6, right: 6),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.add, color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 60, left: 10),
                          child: const Text(
                            'COVID-19',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150,
            width: 200,
            child: Card(
              color: const Color.fromARGB(255, 10, 69, 117),
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 6, right: 6),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.add, color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 60, left: 10),
                          child: const Text(
                            'FUTURE OF FOOD',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150,
            width: 200,
            child: Card(
              color: Colors.lightBlue,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 6, right: 6),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.add, color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 60, left: 10),
                          child: const Text(
                            'MENTAL HEALTH',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 150,
            width: 200,
            child: Card(
              color: Colors.pink,
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(0.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(top: 6, right: 6),
                          alignment: Alignment.topRight,
                          child: const Icon(
                            // <-- Icon

                            Icons.add, color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 60, left: 10),
                          child: const Text(
                            'HEALTH ISSUES',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ]));
  }
}
