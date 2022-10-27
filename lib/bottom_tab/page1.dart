// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:rk_news/Top_src/business.dart';
import 'package:rk_news/Top_src/politics.dart';
import 'package:rk_news/Top_src/sports.dart';

void main() => runApp(Page1());

/// This Widget is the main application widget.
// ignore: use_key_in_widget_constructors
class Page1 extends StatelessWidget {
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

// const upperTab = TabBar(tabs: <Tab>[
//   Tab(
//       child: Align(
//           alignment: Alignment.center,
//           child: Text("Business", style: TextStyle(color: Colors.black)))),
//   Tab(
//       child: Align(
//           alignment: Alignment.center,
//           child: Text("Politics", style: TextStyle(color: Colors.black)))),
//   Tab(
//       child: Align(
//           alignment: Alignment.center,
//           child: SelectableText(
//             "Sports",

//           ))),
// ]);

const up = TabBar(
  labelColor: Colors.green,
  unselectedLabelColor: Colors.black,
  tabs: [
    Tab(text: 'Business'),
    Tab(text: 'Politics'),
    Tab(text: 'Sports'),
  ],
);

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            bottom: up,
            backgroundColor: const Color(0xFFF5F5F5),
          ),
          body: const TabBarView(
            children: [business(), Politics(), Sports()],
          ),
        ),
      ),
    );
  }
}
