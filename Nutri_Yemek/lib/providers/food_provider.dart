// lib/providers/food_provider.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/food_model.dart';

class FoodProvider with ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  List<Food> _foods = [];

  List<Food> get foods => _foods;

  Future<void> fetchFoods() async {
    final snapshot = await _firestore.collection('foods').get();
    _foods = snapshot.docs.map((doc) => Food.fromSnapshot(doc)).toList();
    notifyListeners();
  }

  Future<void> addFood(Food food) async {
    await _firestore.collection('foods').add(food.toMap());
    fetchFoods();
  }
}
