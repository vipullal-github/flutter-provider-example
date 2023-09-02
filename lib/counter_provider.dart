import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int count = 0;

  CounterProvider();

  void incrementCounter() {
    count++;
    notifyListeners();
  }

  void decrementCount() {
    if (count > 0) {
      --count;
      notifyListeners();
    }
  }
}
