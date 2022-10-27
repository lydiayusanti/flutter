import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_device/adaptive_layout/platform.dart';

class MyMobileAdaptive extends StatelessWidget {
  const MyMobileAdaptive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PlatformWidget(
        androidBuilder: _androidBuilder(), iosBuilder: _iosBuilder());
  }

  Widget _androidBuilder() {
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

  CupertinoPageScaffold _iosBuilder() {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        leading: Text('IOS Builder'),
      ),
      backgroundColor: Colors.green,
      child: Column(
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