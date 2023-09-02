import 'package:flutter/material.dart';

class CounterProvider with ChangeNotifier {
  int _count = 0; // Make it private
  int get counter => _count; // let the outside world access it

  CounterProvider();

  void incrementCounter() {
    _count++;
    notifyListeners();
  }

  void decrementCount() {
    if (_count > 0) {
      --_count;
      notifyListeners();
    }
  }
}
