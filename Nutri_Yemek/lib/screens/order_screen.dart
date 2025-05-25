import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/food_model.dart';
import '../models/order_model.dart';
import '../providers/order_provider.dart';

class OrderScreen extends StatelessWidget {
  final Food food;

  OrderScreen({required this.food});

  @override
  Widget build(BuildContext context) {
    final orderProvider = Provider.of<OrderProvider>(context);
    final userId = 'some_user_id'; // Şu anda statik kullanıcı ID'si

    void _placeOrder() {
      final order = Order(
        id: '', // Genellikle benzersiz bir ID olacaktır, burada boş bıraktım
        restaurantId: food.restaurantId,
        foodId: food.id,
        userId: userId,
        quantity: 1, // Örnek olarak 1 varsayıldı, uygulamanıza göre ayarlayın
        dateTime: DateTime.now(),
      );

      orderProvider.addOrder(order);

      // İsteğe bağlı olarak bir onay ekranına geçiş yapabilir veya başka bir işlem yapabilirsiniz
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Order ${food.name}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Order ${food.name}?',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _placeOrder,
              child: Text('Place Order'),
            ),
          ],
        ),
      ),
    );
  }
}
