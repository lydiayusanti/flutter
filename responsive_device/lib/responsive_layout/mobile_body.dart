import 'package:flutter/material.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mobile')),
      backgroundColor: Colors.green,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            // video
            child: Container(
              height: 250,
              color: Colors.lightGreen,
            ),
          ),
          // list
          Expanded(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    color: Colors.grey,
                    height: 120,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}