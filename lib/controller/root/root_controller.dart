import 'package:flutter/material.dart';

 class RootController {
  ValueNotifier<int> currentIndex = ValueNotifier(0);
  void changeIndex(int index) {
    currentIndex.value = index;
  }
}
