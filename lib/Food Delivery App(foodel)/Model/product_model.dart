class MyProductModel {
  final String image, name, category;
  final double price, rate, distance;

  MyProductModel({
    required this.image,
    required this.name,
    required this.price,
    required this.rate,
    required this.category,
    required this.distance,
  });
}

List<MyProductModel> myProductModel = [
  MyProductModel(
    image: 'assets/food-delivery(foodel)/ramen/sapporo_miso_ramen.png',
    name: 'Sapporo Miso Ramen',
    price: 3.9,
    rate: 5,
    distance: 150,
    category: "Ramen",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/ramen/kurume_ramen.png',
    name: 'Ramen Kurume',
    price: 4.3,
    rate: 4.9,
    distance: 600,
    category: "Ramen",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/ramen/hakata_ramen.png',
    name: 'Ramen Hakata',
    price: 3.9,
    distance: 400,
    rate: 4.8,
    category: "Ramen",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/ramen/shrimp_fried_rice.png',
    name: 'Cơm Chiên Tôm',
    price: 4.9,
    distance: 800,
    rate: 4.5,
    category: "Ramen",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/ramen/fullset_ramen.png',
    name: 'Ramen Đầy Đủ',
    price: 5.9,
    distance: 400,
    rate: 4.7,
    category: "Ramen",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/burger/grilled-beef-burger.png',
    name: 'Bánh Burger Bò Nướng',
    price: 33.5,
    distance: 150,
    rate: 5.0,
    category: "Burger",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/burger/fried-chicken-burger.png',
    name: 'Bánh Burger Gà Chiên',
    price: 23.0,
    distance: 150,
    rate: 4.7,
    category: "Burger",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/burger/cheese-burger.png',
    name: 'Bánh Burger Phô Mai',
    price: 40.5,
    distance: 100,
    rate: 4.5,
    category: "Burger",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/burger/beef-burger.png',
    name: 'Bánh Burger Bò',
    price: 18.5,
    distance: 200,
    rate: 5.0,
    category: "Burger",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/veg-salad.png',
    name: 'Salad Rau',
    price: 7.0,
    distance: 300,
    rate: 5.0,
    category: "Salad",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/mix-salad.png',
    name: 'Salad Trộn',
    price: 10.0,
    distance: 350,
    rate: 4.8,
    category: "Salad",
  ),
  MyProductModel(
    image: 'assets/food-delivery(foodel)/berry-bonanza-waffle.png',
    name: 'Bánh Waffle Berry Bonanza',
    price: 10.0,
    distance: 500,
    rate: 4.5,
    category: "Waffle",
  ),
];
