import 'dart:math';

import 'package:flutter/cupertino.dart';



class MyHomePageViewModel extends ChangeNotifier{

  //? encapsulation
  int _counter = 0;

  int get counter{
    return _counter;
  }

  incrementCounter() {
    _counter += 1;
    notifyListeners();
  }

  decrementCounter() {
    _counter = max(_counter-1, 0);
    notifyListeners();
  }

  
}