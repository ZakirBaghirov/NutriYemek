class Restaurant {
  final String id;
  final String name;
  final String address;
  final String imageUrl;
  final int rating;
  final double price;

  Restaurant({
    required this.id,
    required this.name,
    required this.address,
    required this.imageUrl,
    required this.rating,
    required this.price,
  });

  factory Restaurant.fromSnapshot(Map<String, dynamic> snapshot) {
    return Restaurant(
      id: snapshot['id'],
      name: snapshot['name'],
      address: snapshot['address'],
      imageUrl: snapshot['imageUrl'],
      rating: snapshot['rating'],
      price: snapshot['price'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'address': address,
      'imageUrl': imageUrl,
      'rating': rating,
      'price': price,
    };
  }
}
