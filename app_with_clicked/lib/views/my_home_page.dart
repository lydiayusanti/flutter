import 'package:app_with_clicked/view_model/my_home_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final getViewMode = Provider.of<MyHomePageViewModel>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Page',
          ),
        ),
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Provider.of<MyHomePageViewModel>(context, listen: true)
                    .counter
                    .toString(),
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<MyHomePageViewModel>(context, listen: false)
                      .incrementCounter();
                },
                child: Text(
                  "+",
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<MyHomePageViewModel>(context, listen: false)
                      .decrementCounter();
                },
                child: Text(
                  "-",
                ),
              ),
            ],
          ),
        ));
  }
}
