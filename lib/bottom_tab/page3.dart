// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api

import 'package:flutter/material.dart';

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
      body: Center(
        child: ElevatedButton(
          child: const Text('Welcome to Page 3'),
          onPressed: () {},
        ),
      ),
    );
  }
}
