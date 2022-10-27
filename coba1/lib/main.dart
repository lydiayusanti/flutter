import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cupertino Widget'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return CupertinoAlertDialog(
                  title: Text('Ini Adalah Alert Dialog'),
                  content: Text('Apakah anda suka?'),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text("No"),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Yes"),
                    ),
                  ],
                );
              },
            );
          },
          child: Text(
            'Alert Dialog Button',
            style: TextStyle(
                fontSize: 15, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
