import 'package:flutter/material.dart';
import 'package:responsive_device/responsive.dart';
import 'package:responsive_device/responsive_layout/dekstop_body.dart';
import 'responsive_layout/mobile_body.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // final currentWidget = MediaQuery.of(context).size.width;

    // return Scaffold(
    //   body: Center(
    //       child: Text(
    //     currentWidget.toString(),
    //     style: const TextStyle(fontSize: 20),
    //   )),
    // );

    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
