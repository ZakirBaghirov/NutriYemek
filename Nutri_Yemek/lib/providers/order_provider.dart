import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../models/order_model.dart';

class OrderProvider with ChangeNotifier {
  List<Order> _orders = [];

  List<Order> get orders => _orders;

  Future<void> fetchOrders() async {
    final snapshot =
        await FirebaseFirestore.instance.collection('orders').get();
    _orders = snapshot.docs.map((doc) => Order.fromMap(doc.data())).toList();
    notifyListeners();
  }

  Future<void> addOrder(Order order) async {
    await FirebaseFirestore.instance.collection('orders').add(order.toMap());
    _orders.add(order);
    notifyListeners();
  }
}
