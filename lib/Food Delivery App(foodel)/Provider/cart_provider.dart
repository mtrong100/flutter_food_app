import 'package:flutter/material.dart';
import '../Model/cart_model.dart';
import '../Model/product_model.dart';

class CartProvider with ChangeNotifier {
  List<CartModel> _carts = [];

  List<CartModel> get carts => _carts;

  set carts(List<CartModel> carts) {
    _carts = carts;
    notifyListeners();
  }

  // Hàm thêm sản phẩm vào giỏ hàng
  addCart(MyProductModel productModel) {
    if (productExist(productModel)) {
      // Kiểm tra index của sản phẩm trong giỏ hàng
      int index =
          _carts.indexWhere((element) => element.productModel == productModel);

      _carts[index].quantity = _carts[index].quantity + 1;
    } else {
      _carts.add(CartModel(productModel: productModel, quantity: 1));
    }
    notifyListeners();
  }

  // Hàm tăng số lượng sản phẩm
  addQuantity(MyProductModel product) {
    // Kiểm tra có tồn tại của index
    int index = _carts.indexWhere((element) => element.productModel == product);

    _carts[index].quantity = _carts[index].quantity + 1;
    notifyListeners();
  }

  // Hàm giảm số lượng sản phẩm
  reduceQuantity(MyProductModel product) {
    // Kiểm tra có tồn tại trong giỏ hàng hay không?
    int index = _carts.indexWhere((element) => element.productModel == product);

    _carts[index].quantity = _carts[index].quantity - 1;
    notifyListeners();
  }

  // Hàm check sản phẩm trên giỏ hàng
  productExist(MyProductModel productModel) {
    if (_carts.indexWhere((element) => element.productModel == productModel) ==
        -1) {
      return false;
    } else {
      return true;
    }
  }

// Hàm tính toán tổng số tiền trong giỏ hàng, bao gồm phí vận chuyển
  double totalCart() {
    double total = 0;
    for (var i = 0; i < _carts.length; i++) {
      total += _carts[i].quantity * _carts[i].productModel.price;
    }
    const double shippingFee = 5.99; // Phí vận chuyển
    total += shippingFee; // Cộng thêm phí vận chuyển vào tổng
    return total;
  }

  // Clear giỏ hàng
  clearCart() {
    _carts = [];
    notifyListeners();
  }
}
