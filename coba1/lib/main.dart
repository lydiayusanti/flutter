import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(
              height: 120,
            ),
            Image.asset(
              'images/antenna.png',
              width: 167,
              height: 167,
            ),
            SizedBox(
              height: 38,
            ),
            Text(
              "Oooopss!",
              style: TextStyle(fontSize: 26, fontFamily: 'MontserratSemiBold'),
            ),
            SizedBox(
              height: 24,
            ),
            Text(
              "No internet connection Found\n Check Your Connection",
              style: TextStyle(fontSize: 18, fontFamily: 'MontserratRegular'),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 34,
            ),
            RaisedButton(
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0)),
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(42, 12, 42, 12),
                child: Text(
                  "Try Again",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'MontserratSemiBold'),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
