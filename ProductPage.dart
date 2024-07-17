import 'package:flutter/material.dart';
import 'package:online_groceries/model/product_detail_model.dart';
import 'package:online_groceries/view/explore/ProductDetailsPage.dart';

class ProductPage extends StatefulWidget {
  final String category;

  ProductPage({required this.category});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<ProductDetailModel> products = [
    ProductDetailModel(
        name: "Moos",
        price: "84%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/banana.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Berries",
        price: "82%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/strawberry.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Tufaax",
        price: "77%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/apple.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Canab",
        price: "74%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/grape.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Qaro",
        price: "68%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/watermelon.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Avocados",
        price: "56%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/avocado.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Mandarins",
        price: "53%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/mandarin.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Oranges",
        price: "49%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/orange.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Pineapple",
        price: "45%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/pineapple.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Cherries",
        price: "40%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/cherries.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Pears",
        price: "27%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/pear.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Lemons",
        price: "25%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/lemon.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Mixed Fruit",
        price: "18%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/mixed-fruit.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Limes",
        price: "16%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/lime.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Kiwis",
        price: "15%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/kiwi.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Grapefruit",
        price: "12%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/grapefruit.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Mangoes",
        price: "10%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/mango.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Pomegranates",
        price: "6%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/pomegranate.png",
        category: "Fresh Fruits"),
    ProductDetailModel(
        name: "Tangerines",
        price: "3%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/tangerine.png",
        category: "Fresh Fruits"),

    // Fresh Vegetables
    ProductDetailModel(
        name: "Potatoes",
        price: "85%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/potatoe.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Onions",
        price: "83%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/onion.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Tomatoes",
        price: "80%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/tomato.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Lettuce",
        price: "80%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/lettuce.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Carrots",
        price: "77%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/carrot.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Peppers",
        price: "72%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/pepper.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Cucumbers",
        price: "64%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/cucumber.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Celery",
        price: "62%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/celery.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Salad Kits",
        price: "52%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/salad-kit.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Broccoli",
        price: "51%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/broccoli.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Mushrooms",
        price: "48%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/mushroom.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Spinach",
        price: "47%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/spinach.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Squash",
        price: "46%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/squash.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Corn",
        price: "46%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/corn.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Cabbage",
        price: "42%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/cabbage.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Green Beans",
        price: "31%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/green-bean.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Cauliflower",
        price: "28%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/cauliflower.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Garlic",
        price: "25%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/garlic.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Asparagus",
        price: "19%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/asparagus.png",
        category: "qudaar fresh ah"),
    ProductDetailModel(
        name: "Brussels Sprouts",
        price: "1%",
        image:
            "https://www.freshproduce.com/siteassets/images/various-f-and-v/isolated/brussels-sprout.png",
        category: "qudaar fresh ah"),
  ];

  List<ProductDetailModel> _filteredProducts = [];
  TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredProducts = products
        .where((product) => product.category == widget.category)
        .toList();
  }

  void _filterProducts(String query) {
    setState(() {
      if (query.isEmpty) {
        _filteredProducts = products
            .where((product) => product.category == widget.category)
            .toList();
      } else {
        _filteredProducts = products
            .where((product) =>
                product.category == widget.category &&
                product.name!.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    _filterProducts(_searchController.text);
                  },
                ),
              ),
              onChanged: _filterProducts,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 3 / 4,
                ),
                itemCount: _filteredProducts.length,
                itemBuilder: (context, index) {
                  final product = _filteredProducts[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailsPage(
                            product: product,
                          ),
                        ),
                      );
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                product.image ?? '',
                                height: 80,
                                width: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              product.name ?? '',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(height: 5),
                            Text(
                              product.price ?? '',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10),
                            IconButton(
                              icon: Icon(Icons.add_circle, color: Colors.green),
                              onPressed: () {
                                // Add to cart action
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
