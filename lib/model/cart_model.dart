import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  final List _shopItems = [
    ["Abacate", "4,00", "lib/images/avocado.png", Colors.green],
    ["Banana", "2,50", "lib/images/banana.png", Colors.yellow],
    ["Frango", "25,00", "lib/images/chicken.png", Colors.brown],
    ["Água", "1,00", "lib/images/water.png", Colors.blue],
  ];

  get shopItens => _shopItems;
}
