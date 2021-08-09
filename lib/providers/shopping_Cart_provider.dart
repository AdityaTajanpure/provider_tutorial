import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  List<String> _cartItem = ['Apple', 'Grapes', 'Mango'];
  int get count => _cartItem.length;
  List<String> get items => _cartItem;
  void addItem(String item) {
    _cartItem.add(item);
    notifyListeners();
  }
}
