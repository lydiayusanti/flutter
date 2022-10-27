import 'package:app_with_login/model/my_state.dart';
import 'package:flutter/material.dart';

import '../model/user.dart';

class MyHomePageViewModel extends ChangeNotifier {
  final _user = User();

  final _state = MyState();
  MyState get state => _state;

  bool get _isAValidUser => _user.email.isNotEmpty && _user.password.isNotEmpty;
  bool get canLogin => !_state.isLoading && _isAValidUser;

  void setEmail(String value) {
    _user.email = value;
    notifyListeners();

    if (_isAValidUser == true) {
      _state.message = "Login";
    }
  }

  void setPassword(String value) {
    _user.password = value;
    notifyListeners();

    if (_isAValidUser == true) {
      _state.message = "Login";
    }
  }

  void login() {
    Future.delayed(Duration(seconds: 2), () {
      _state.message = "Succes Login";
      notifyListeners();
    });
  }
}
