class Order {
  final String id;
  final String restaurantId;
  final String userId;
  final List<String> foodIds;
  final double totalPrice;
  final DateTime orderTime;

  Order({
    required this.id,
    required this.restaurantId,
    required this.userId,
    required this.foodIds,
    required this.totalPrice,
    required this.orderTime,
  });

  factory Order.fromMap(Map<String, dynamic> data) {
    return Order(
      id: data['id'],
      restaurantId: data['restaurantId'],
      userId: data['userId'],
      foodIds: List<String>.from(data['foodIds']),
      totalPrice: data['totalPrice'],
      orderTime: DateTime.parse(data['orderTime']),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'restaurantId': restaurantId,
      'userId': userId,
      'foodIds': foodIds,
      'totalPrice': totalPrice,
      'orderTime': orderTime.toIso8601String(),
    };
  }
}
