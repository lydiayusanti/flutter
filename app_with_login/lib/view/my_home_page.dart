import 'package:app_with_login/view_model/my_home_page_view_model.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _viewModel = MyHomePageViewModel();

  @override
  void initState() {
    super.initState();
    _viewModel.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                decoration: InputDecoration(hintText: "E-Mail"),
                onChanged: _viewModel.setEmail,
                enabled: !_viewModel.state.isLoading,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(hintText: "Password"),
                obscureText: true,
                onChanged: _viewModel.setPassword,
                enabled: !_viewModel.state.isLoading,
              ),
              ElevatedButton(
                onPressed: _viewModel.canLogin ? _viewModel.login : null,
                child: Text(
                  _viewModel.state.message,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
