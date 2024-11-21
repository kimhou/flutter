import 'dart:collection';

import 'package:flutter/material.dart';

class Item {
  Item(this.name, this.desc);
  String name;
  String desc;
}

class ListModel extends ChangeNotifier {
  final List<Item> _list = [];
  UnmodifiableListView<Item> get list => UnmodifiableListView(_list);

  void add(Item item) {
    _list.add(item);
    notifyListeners();
  }
}
