import 'package:flutter/material.dart';

import '../models/restaurant_model.dart';

class RestaurantDetailScreen extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantDetailScreen({required this.restaurant});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurant.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(restaurant.imageUrl),
            SizedBox(height: 8.0),
            Text(
              restaurant.name,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(restaurant.address),
            Text('Rating: ${restaurant.rating}'),
            Text('Price: \$${restaurant.price}'),
          ],
        ),
      ),
    );
  }
}
