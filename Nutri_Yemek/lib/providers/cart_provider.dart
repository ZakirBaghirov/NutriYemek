// lib/providers/cart_provider.dart
import 'package:flutter/material.dart';

import '../models/food_model.dart';

class CartProvider with ChangeNotifier {
  Map<String, Food> _items = {};

  Map<String, Food> get items => _items;

  double get totalAmount {
    double total = 0.0;
    _items.forEach((key, food) {
      total += food.price;
    });
    return total;
  }

  void addItem(Food food) {
    if (_items.containsKey(food.id)) {
      // Update quantity if needed
    } else {
      _items.putIfAbsent(food.id, () => food);
    }
    notifyListeners();
  }

  void removeItem(String foodId) {
    _items.remove(foodId);
    notifyListeners();
  }

  void clearCart() {
    _items = {};
    notifyListeners();
  }
}
