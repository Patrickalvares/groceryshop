import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Abacate", "4,00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2,50", "lib/images/banana.png", Colors.yellow],
    ["Frango", "25,00", "lib/images/chicken.png", Colors.brown],
    ["Água", "1,00", "lib/images/water.png", Colors.blue],
  ];
  List _cartItems = [];

  get shopItens => _shopItems;

  get cartItems => _cartItems;

  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < _cartItems.length; i++) {
      totalPrice += double.parse(_cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}
