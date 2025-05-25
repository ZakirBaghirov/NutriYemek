// lib/models/user_model.dart
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String email;
  final String username;
  final String role;

  UserModel({
    required this.id,
    required this.email,
    required this.username,
    required this.role,
  });

  factory UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    return UserModel(
      id: snapshot.id,
      email: snapshot['email'],
      username: snapshot['username'],
      role: snapshot['role'],
    );
  }
}
