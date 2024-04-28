import 'package:flutter/material.dart';

class CounterApp with ChangeNotifier {
  int count = 0;
  int getCount() {
    return count;
  }

  void setCount(){
    count++;
  }
}
