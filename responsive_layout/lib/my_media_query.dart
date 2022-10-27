import 'package:flutter/material.dart';

class MyMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final widthApp = MediaQuery.of(context).size.width;
    final heightApp = MediaQuery.of(context).size.height;

    final myAppBar = AppBar(
      title: const Text('Layout Builder'),
    );

    final paddingTop = MediaQuery.of(context).padding.top;

    final heightBody = heightApp - paddingTop - myAppBar.preferredSize.height;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      appBar: myAppBar,
      body: (isLandscape)
          ? Column(
              children: [
                Container(
                  width: widthApp * 0.5,
                  height: heightBody * 0.5,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: heightBody * 0.5,
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: CircleAvatar(),
                          title: Text('Media Qury'),
                        );
                      }),
                )
              ],
            )
          : Column(
              children: [
                Container(
                  width: widthApp,
                  height: heightBody * 0.3,
                  color: Colors.amber,
                ),
                SizedBox(
                  height: heightBody * 0.7,
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: CircleAvatar(),
                          title: Text('Media Qury'),
                        );
                      }),
                )
              ],
            ),
    );
  }
}