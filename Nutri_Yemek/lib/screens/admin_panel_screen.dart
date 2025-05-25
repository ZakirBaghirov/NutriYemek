import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/food_model.dart';
import '../models/restaurant_model.dart';
import '../providers/food_provider.dart';
import '../providers/restaurant_provider.dart';

class AdminPanelScreen extends StatefulWidget {
  @override
  _AdminPanelScreenState createState() => _AdminPanelScreenState();
}

class _AdminPanelScreenState extends State<AdminPanelScreen> {
  final _restaurantNameController = TextEditingController();
  final _restaurantImageUrlController = TextEditingController();
  final _foodNameController = TextEditingController();
  final _foodImageUrlController = TextEditingController();
  final _foodPriceController = TextEditingController();
  final _foodCaloriesController = TextEditingController();

  void _addRestaurant() {
    final restaurant = Restaurant(
      id: '',
      name: _restaurantNameController.text,
      imageUrl: _restaurantImageUrlController.text,
      rating: 5.0, // Default rating
      price: 0.0, // Default price
    );
    Provider.of<RestaurantProvider>(context, listen: false)
        .addRestaurant(restaurant);
  }

  void _addFood() {
    final food = Food(
      id: '',
      name: _foodNameController.text,
      imageUrl: _foodImageUrlController.text,
      price: double.parse(_foodPriceController.text),
      calories: double.parse(_foodCaloriesController.text),
    );
    Provider.of<FoodProvider>(context, listen: false).addFood(food);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Paneli'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: _restaurantNameController,
              decoration: InputDecoration(labelText: 'Restoran Adı'),
            ),
            TextField(
              controller: _restaurantImageUrlController,
              decoration: InputDecoration(labelText: 'Restoran Resim URL'),
            ),
            ElevatedButton(
              onPressed: _addRestaurant,
              child: Text('Restoran Ekle'),
            ),
            TextField(
              controller: _foodNameController,
              decoration: InputDecoration(labelText: 'Yemek Adı'),
            ),
            TextField(
              controller: _foodImageUrlController,
              decoration: InputDecoration(labelText: 'Yemek Resim URL'),
            ),
            TextField(
              controller: _foodPriceController,
              decoration: InputDecoration(labelText: 'Yemek Fiyatı'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _foodCaloriesController,
              decoration: InputDecoration(labelText: 'Kalori'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _addFood,
              child: Text('Yemek Ekle'),
            ),
          ],
        ),
      ),
    );
  }
}
