import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;

    final myAppBar = AppBar(
      title: const Text('Layout Builder'),
    );

    final paddingTop = MediaQuery.of(context).padding.top;

    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    return Scaffold(
        appBar: myAppBar,
        body: Column(
          children: [
            Container(
              width: widthApp,
              height: heightBody * 0.3,
              color: Colors.greenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyContainer(
                    widthApp: widthApp,
                  ),
                  MyContainer(
                    widthApp: widthApp,
                  ),
                  MyContainer(
                    widthApp: widthApp,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed('/MyMediaQuery');
                },
                child: const Text('Media Query'))
          ],
        ));
  }
}

class MyContainer extends StatelessWidget {
  double widthApp;
  MyContainer({required this.widthApp});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: widthApp * 0.25,
        height: constraints.maxHeight * 0.3,
        color: Colors.amber,
      );
    });
  }
}