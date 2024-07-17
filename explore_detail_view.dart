import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/model/explore_category_model.dart';

class ExploreDetailView extends StatelessWidget {
  final ExploreCategoryModel category;

  ExploreDetailView({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.catName ?? 'Category Details'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(category.image ?? ''),
            SizedBox(height: 20),
            Text(
              category.catName ?? 'No Category Name',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Add more details as necessary
          ],
        ),
      ),
    );
  }
}
