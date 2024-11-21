import 'package:flutter/material.dart';

class ChangeNotifier implements Listenable {
  List listeners = [];
  @override
  void addListener(VoidCallback listener) {
    listeners.add(listener);
  }

  @override
  void removeListener(VoidCallback listener) {
    listeners.remove(listener);
  }

  notifyListeners() {
    for (var element in listeners) {
      element();
    }
  }
}
