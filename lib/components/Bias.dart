// ignore_for_file: file_names, library_private_types_in_public_api, unrelated_type_equality_checks

import 'package:flutter/material.dart';
import 'package:rk_news/bargraph.dart';
import 'package:rk_news/components/bargraph2.dart';

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
  bool a = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
          child: ListView(children: <Widget>[
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
                      SizedBox(
                        width: 60.0,
                        height: 25.0,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              a == "LEFT";
                            });
                          },
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
                          onPressed: () {
                            setState(() {
                              a == "RIGHT";
                            });
                          },
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
                          left: 20.0,
                        ),
                        alignment: Alignment.center,
                      ),
                      SizedBox(
                        width: 70.0,
                        height: 25.0,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {});
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFA1A1A1),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text('center',
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
                  Expanded(
                      child: (a == "LEFT")
                          ? (const Bargraph(
                              left: 150.00, right: 10.00, center: 50.00))
                          : (a == 'RIGHT')
                              ? (const Bargraph(
                                  left: 50.00, right: 110.00, center: 150.00))
                              : (a == 'center')
                                  ? (const Bargraph(
                                      left: 20.00,
                                      right: 10.00,
                                      center: 150.00))
                                  : (const Bargraph(
                                      left: 80.00,
                                      right: 50.00,
                                      center: 10.00)))
                ],
              ),
            ),
          ),
        ),
      ])),
    );
  }
}
