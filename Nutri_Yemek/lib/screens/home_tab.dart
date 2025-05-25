// lib/screens/home_tab.dart
import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ana Sayfa'),
      ),
      body: Center(child: Text('Ana Sayfa İçeriği')),
    );
  }
}
