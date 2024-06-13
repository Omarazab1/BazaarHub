
import 'package:store/models/product_model.dart';

class ProductItem {
  int quantity;
  final ProductModel? product;


  ProductItem({this.quantity = 1, required this.product});

  void increment() {
    quantity++;
  }

// void add() {}

// void substract() {}
}