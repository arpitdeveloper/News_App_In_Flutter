// ignore_for_file: must_be_immutable

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  googleLogin() async {
    GoogleSignIn googleSignIn = GoogleSignIn();
    try {
      var reslut = await googleSignIn.signIn();
      if (reslut == null) {
        return;
      }

      final userData = await reslut.authentication;
      final credential = GoogleAuthProvider.credential(
          accessToken: userData.accessToken, idToken: userData.idToken);
      // ignore: unused_local_variable
      var finalResult =
          await FirebaseAuth.instance.signInWithCredential(credential);
      // ignore: avoid_print
      print(reslut.displayName);
      // ignore: unused_element

      // // ignore: avoid_print
      // print(reslut.email);
      // // ignore: avoid_print
      // print(reslut.photoUrl);
    } catch (error) {
      // ignore: avoid_print
      print(error);
    }
  }

  Future<void> logout() async {
    await GoogleSignIn().disconnect();
    FirebaseAuth.instance.signOut();
  }

  // var email = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: Center(
          child: ListView(children: <Widget>[
        Container(
          margin: const EdgeInsets.only(left: 10),
          child: Image.asset(
            'assets/images/scr1.png',
            height: 250,
            width: 200,
          ),
        ),
        Container(
            height: 35,
            margin: const EdgeInsets.only(),
            padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color.fromARGB(255, 37, 96, 197), // Background color
              ),
              // ignore: sort_child_properties_last
              child: const Text(
                'CONTINUE WITH GOOGLE',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              onPressed: googleLogin,
            )),
        Container(
            height: 35,
            margin: const EdgeInsets.only(top: 10.0),
            padding: const EdgeInsets.fromLTRB(110, 0, 110, 0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black, // Background color
              ),
              // ignore: sort_child_properties_last
              child: const Text(
                'log out',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                ),
              ),
              onPressed: logout,
            )),
        Container(
          margin: const EdgeInsets.only(top: 180, left: 25, right: 10),
          child: const Text(
            'BY CONTINUING ,YOUR ARE AGREE TO OUR TEAMS  AND CONDITIONS ',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 110),
          child: const Text(
            'AND UNDERSTAND PRIVATE POLICY',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ])),
    );
  }
}
