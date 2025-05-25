// lib/providers/auth_provider.dart
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  User? _user;
  String? _role;

  User? get user => _user;
  String? get role => _role;

  Future<void> login(String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      _user = userCredential.user;
      await _fetchUserRole();
      notifyListeners();
    } catch (e) {
      throw e;
    }
  }

  Future<void> register(
      String email, String password, String username, String role) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      _user = userCredential.user;
      await _user!.updateDisplayName(username);
      await _firestore.collection('users').doc(_user!.uid).set({
        'email': email,
        'username': username,
        'role': role,
      });
      _role = role;
      notifyListeners();
    } catch (e) {
      throw e;
    }
  }

  Future<void> _fetchUserRole() async {
    if (_user != null) {
      final userDoc =
          await _firestore.collection('users').doc(_user!.uid).get();
      _role = userDoc['role'];
    }
  }
}
