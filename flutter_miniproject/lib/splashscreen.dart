import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_miniproject/login_screen.dart';

class splashscreen extends StatefulWidget {
  _splashscreen createState() => _splashscreen();
}

class _splashscreen extends State<splashscreen> {
  void initState() {
    super.initState();
    splashscreenStart();
  }

  splashscreenStart() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Color(0xfff7cac9),
                gradient: LinearGradient(colors: [
                  (Color(0xfff7cac9)),
                  (Color(0xffffdcdb)),
                  (Color(0xffb4c8ea)),
                  (Color(0xff91a8d0))
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              child: Image.asset(
                'assets/images/chef.png',
                width: 80,
                height: 80,
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 125),
              child: Text(
                'Recepeo',
                style: TextStyle(
                  color: Color(0xffBA1A1A),
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                  fontSize: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
