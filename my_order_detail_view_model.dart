import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries/model/product_detail_model.dart';
import 'package:online_groceries/model/my_order_model.dart';

class MyOrderDetailViewModel extends GetxController {
  var products = <ProductDetailModel>[].obs;
  final MyOrderModel mObj;

  MyOrderDetailViewModel(this.mObj);

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    var response = [
      {
        "name": "Bananas",
        "price": "84%",
        "image": "https://example.com/images/banana.jpg",
        "category": "Fresh Fruits",
        "rating": 0.0,
        "prodId": "1"
      },
      {
        "name": "Berries",
        "price": "82%",
        "image": "https://example.com/images/berries.jpg",
        "category": "Fresh Fruits",
        "rating": 0.0,
        "prodId": "2"
      }
    ];

    products.value =
        response.map((json) => ProductDetailModel.fromJson(json)).toList();
  }

  void serviceCallGiveRatingReview(
      String prodId, String rating, String message, VoidCallback onSuccess) {
    // Implementation for giving rating and review
    onSuccess();
  }
}
