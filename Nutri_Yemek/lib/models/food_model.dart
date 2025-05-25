// lib/models/food_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class Food {
  final String id;
  final String name;
  final String description;
  final double price;
  final String restaurantId;
  final Map<String, dynamic> nutrition;

  Food({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.restaurantId,
    required this.nutrition,
  });

  factory Food.fromSnapshot(DocumentSnapshot snapshot) {
    return Food(
      id: snapshot.id,
      name: snapshot['name'],
      description: snapshot['description'],
      price: snapshot['price'],
      restaurantId: snapshot['restaurantId'],
      nutrition: snapshot['nutrition'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'price': price,
      'restaurantId': restaurantId,
      'nutrition': nutrition,
    };
  }
}
