import 'package:care_connect/pages/login_page.dart';
import 'package:care_connect/pages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SignUp.pageRout,
      routes: {
        Login.pageRout: (context) => const Login(),
        SignUp.pageRout: (context) => const SignUp(),
      },
    );
  }
}
