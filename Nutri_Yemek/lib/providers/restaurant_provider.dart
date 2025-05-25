import 'package:flutter/material.dart';

import '../models/restaurant_model.dart';

class RestaurantProvider with ChangeNotifier {
  List<Restaurant> _restaurants = [];

  List<Restaurant> get restaurants => _restaurants;

  void fetchRestaurants() {
    // Firestore'dan veri çekme simülasyonu
    List<Map<String, dynamic>> fetchedData = [
      {
        'id': '1',
        'name': 'Restaurant 1',
        'address': 'Address 1',
        'imageUrl': 'http://example.com/image1.jpg',
        'rating': 4,
        'price': 100.0,
      },
      // Diğer veriler...
    ];

    _restaurants =
        fetchedData.map((data) => Restaurant.fromSnapshot(data)).toList();
    notifyListeners();
  }

  void updateRestaurant(Restaurant updatedRestaurant) {
    int index = _restaurants
        .indexWhere((restaurant) => restaurant.id == updatedRestaurant.id);
    if (index != -1) {
      _restaurants[index] = updatedRestaurant;
      notifyListeners();
    }
  }
}
