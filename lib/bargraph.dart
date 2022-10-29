// ignore_for_file: unnecessary_new, avoid_print, library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Bargraph extends StatelessWidget {
  const Bargraph({super.key, this.left, this.right, this.center});

  final left;
  final right;

  final center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: ListView(children: <Widget>[
        new Container(
          alignment: FractionalOffset.center,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                alignment: Alignment.center, // where to position the child
                child: Container(
                  width: 30.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xFFA1A1A1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(top: right),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              Container(
                alignment: Alignment.center, // where to position the child
                child: Container(
                  width: 30.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xFFA1A1A1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(top: left),
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
              Container(
                alignment: Alignment.center, // where to position the child
                child: Container(
                  width: 30.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: const Color(0xFFA1A1A1),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                      margin: EdgeInsets.only(top: center),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
              ),
            ],
          ),
        ),
        new Container(
          alignment: FractionalOffset.center,
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Left',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFA1A1A1),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  'Center',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFA1A1A1),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: const Text(
                  "right",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFA1A1A1),
                  ),
                ),
              )
            ],
          ),
        ),
        // Container(
        //   alignment: Alignment.center, // where to position the child
        //   child: Container(
        //     width: 30.0,
        //     height: 200.0,
        //     decoration: BoxDecoration(
        //       shape: BoxShape.rectangle,
        //       color: const Color(0xFFA1A1A1),
        //       borderRadius: BorderRadius.circular(15),
        //     ),
        //     child: Container(
        //         margin: const EdgeInsets.only(top: 120),
        //         decoration: BoxDecoration(
        //           color: Colors.red,
        //           borderRadius: BorderRadius.circular(15),
        //         )),
        //   ),
        // ),
      ])),
    );
  }
}
