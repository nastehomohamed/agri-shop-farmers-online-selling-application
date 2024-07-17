import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Product Model
class Product {
  final String name;
  final String description;
  final double price;
  final String imageUrl;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.imageUrl,
  });
}

// Product ViewModel
class ProductViewModel extends GetxController {
  final RxList<Product> products = <Product>[
    Product(
      name: 'Organic Banana',
      description: '7pcs',
      price: 2.49,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    // Add more products as needed
  ].obs;

  final isLoading = false.obs;
}

// Explore Category Model
class ExploreCategoryModel {
  final String id;
  final String catName;
  final String image;

  ExploreCategoryModel({
    required this.id,
    required this.catName,
    required this.image,
  });
}

// Explore ViewModel
class ExploreViewModel extends GetxController {
  final RxList<ExploreCategoryModel> listArr = <ExploreCategoryModel>[
    ExploreCategoryModel(
      id: '1',
      catName: 'Fresh Fruits & Vegetables',
      image: 'https://via.placeholder.com/150',
    ),
    // Add more categories as needed
  ].obs;

  final isLoading = false.obs;
}

// Product List Screen
class ProductListScreen extends StatelessWidget {
  final ProductViewModel viewModel = Get.put(ProductViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fresh Fruits & Vegetables'),
      ),
      body: Obx(() {
        if (viewModel.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Change the number of columns if needed
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: viewModel.products.length,
          itemBuilder: (context, index) {
            final product = viewModel.products[index];
            return ProductCard(
              productName: product.name,
              description: product.description,
              price: product.price,
              imageUrl: product.imageUrl,
            );
          },
        );
      }),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String productName;
  final String description;
  final double price;
  final String imageUrl;

  const ProductCard({
    Key? key,
    required this.productName,
    required this.description,
    required this.price,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 100,
                  color: Colors.grey,
                  child: Center(
                    child: Icon(
                      Icons.broken_image,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text(
                  productName,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(description),
                SizedBox(height: 8),
                Text(
                  '\$$price',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    // Add product to cart logic
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Explore Screen
class ExploreScreen extends StatelessWidget {
  final ExploreViewModel viewModel = Get.put(ExploreViewModel());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore Categories'),
      ),
      body: Obx(() {
        if (viewModel.isLoading.value) {
          return Center(child: CircularProgressIndicator());
        }
        return GridView.builder(
          padding: const EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Change the number of columns if needed
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: viewModel.listArr.length,
          itemBuilder: (context, index) {
            final category = viewModel.listArr[index];
            return InkWell(
              onTap: () {
                Get.to(() => ProductListScreen());
              },
              child: CategoryCard(
                categoryName: category.catName,
                imageUrl: category.image,
              ),
            );
          },
        );
      }),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String categoryName;
  final String imageUrl;

  const CategoryCard({
    Key? key,
    required this.categoryName,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              imageUrl,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 150,
                  color: Colors.grey,
                  child: Center(
                    child: Icon(
                      Icons.broken_image,
                      color: Colors.white,
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              categoryName,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
