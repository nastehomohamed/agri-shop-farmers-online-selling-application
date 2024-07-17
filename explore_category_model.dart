import 'package:flutter/material.dart';

class ExploreCategoryModel {
  final String id;
  final String? catId;
  final String? catName;
  final String? image;
  final Color? color;

  ExploreCategoryModel({
    required this.id,
    this.catId,
    this.catName,
    this.image,
    this.color,
  });

  factory ExploreCategoryModel.fromJson(Map<String, dynamic> json) {
    return ExploreCategoryModel(
      id: json['id'],
      catId: json['catId'],
      catName: json['catName'],
      image: json['image'],
      color: json['color'] != null
          ? Color(int.parse(json['color'], radix: 16))
          : null,
    );
  }
}

// Ensure ExploreCategoryModel uses non-nullable String types
class ExploreCategoryModelNonNullable {
  final String id;
  final String catName;
  final String image;

  ExploreCategoryModelNonNullable({
    required this.id,
    required this.catName,
    required this.image,
  });

  factory ExploreCategoryModelNonNullable.fromJson(Map<String, dynamic> json) {
    return ExploreCategoryModelNonNullable(
      id: json['id'],
      catName: json['catName'],
      image: json['image'],
    );
  }
}
