// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
// import 'package:rk_news/bargraph.dart';
import 'package:rk_news/bottom_tab/page1.dart';
import 'package:rk_news/bottom_tab/page2.dart';
import 'package:rk_news/bottom_tab/page3.dart';
// import 'package:rk_news/bottom_tab/page4.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:rk_news/components/Bias.dart';
// import 'package:rk_news/components/bargraph2.dart';
// import 'package:rk_news/components/image.dart';
import 'package:rk_news/components/mytopic.dart';
import 'package:rk_news/components/topic.dart';
// import 'package:rk_news/components/profile_change.dart';
// import 'package:rk_news/view/login_screen.dart';
// ignore: depend_on_referenced_packages

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color(0xFFF5F5F5),
          fontFamily: 'PlayfairDisplay',
          appBarTheme: const AppBarTheme(
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
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;
  static final List<Widget> _widgetOptions = <Widget>[
    Page1(),
    Page2(),
    // const Mytopic(),
    const Topic(),
    Page3()
    // Bargraph()
    // Bias()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        centerTitle: true,
        backgroundColor: const Color(0xFFF5F5F5),
        titleTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 60,
            fontWeight: FontWeight.w500,
            fontFamily: "PlayfairDisplay"),
        title: const Text(
          "ARKE",
          textAlign: TextAlign.center,
        ),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Top',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Discover',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
              icon: Icon(Icons.star_rounded),
              label: 'MYtopics',
              backgroundColor: Colors.black,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.black,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: const Color(0xFFEA7432),
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
