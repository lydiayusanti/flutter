import 'package:flutter/material.dart';
import 'package:responsive_layout/my_media_query.dart';
import 'my_home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/MyHomePage': (context) => MyHomePage(),
        '/MyMediaQuery': (context) => MyMediaQuery()
      },
    );
  }
}