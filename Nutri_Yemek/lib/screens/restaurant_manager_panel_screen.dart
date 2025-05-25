// lib/screens/restaurant_manager_panel_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/food_model.dart';
import '../providers/food_provider.dart';

class RestaurantManagerPanelScreen extends StatefulWidget {
  @override
  _RestaurantManagerPanelScreenState createState() =>
      _RestaurantManagerPanelScreenState();
}

class _RestaurantManagerPanelScreenState
    extends State<RestaurantManagerPanelScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _restaurantIdController =
      TextEditingController(); // Geçici olarak manuel girdi

  Future<void> _addFood() async {
    try {
      final foodProvider = Provider.of<FoodProvider>(context, listen: false);
      final food = Food(
        id: '', // Firestore tarafından atanacak
        name: _nameController.text,
        description: _descriptionController.text,
        price: double.parse(_priceController.text),
        restaurantId:
            _restaurantIdController.text, // Geçici olarak manuel girdi
        nutrition: {}, // Besin değerleri eklenebilir
      );
      await foodProvider.addFood(food);
      _nameController.clear();
      _descriptionController.clear();
      _priceController.clear();
      _restaurantIdController.clear();
    } catch (e) {
      print(e);
      // Hata mesajı göster
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restoran Yöneticisi Paneli'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Yemek Adı'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(labelText: 'Açıklama'),
            ),
            TextField(
              controller: _priceController,
              decoration: InputDecoration(labelText: 'Fiyat'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _restaurantIdController,
              decoration: InputDecoration(labelText: 'Restoran ID'),
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
