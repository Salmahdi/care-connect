/* import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);
  static const String pageRout = 'splash_page';

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  String role = 'patient';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _checkRole();
  }

  void _checkRole() async {
    User? user = FirebaseAuth.instance.currentUser;
    final DocumentSnapshot snap = await FirebaseFirestore.instance
        .collection('users')
        .doc(user!.uid)
        .get();

    setState(() {
      role = snap['role'];
    });

    if (role == 'student') {
      navigateNext();
    } else if (role == 'admin') {
      navigateNext();
    } else if (role == 'teacher') {
      navigateNext();
    }
  }

  void navigateNext(Widget route) {
    Timer(Duration(microseconds: 500), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => route),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: CircularProgressIndicator(
      backgroundColor: Colors.white,
    ));
  }
}
 */