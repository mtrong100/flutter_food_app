import 'package:flutter_food_app/Food%20Delivery%20App(foodel)/Model/product_model.dart';

class CartModel {
  final MyProductModel productModel;
  int quantity;

  CartModel({
    required this.productModel,
    required this.quantity,
  });
}
