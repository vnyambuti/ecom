import 'package:flutter/material.dart';

import '/models/product.dart';

class Shop extends ChangeNotifier {
  List<Product> shop = [
    Product(
      price: 29.99, description: "lorem ipsum", name: "test",
      //  imagePath: ""
    ),
    Product(
      price: 19.99,
      description: "lorem ipsum",
      name: "test123",
      // imagePath: ""
    ),
    Product(
      price: 09.99,
      description: "lorem ipsum",
      name: "test222",
      // imagePath: ""
    ),
    Product(
      price: 39.99,
      description: "lorem ipsum",
      name: "test333",
      // imagePath: ""
    ),
  ];

  List<Product> _cart = [];

  List<Product> get _shop => shop;

  List<Product> getcart() {
    return _cart;
  }

  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  void removeToCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
