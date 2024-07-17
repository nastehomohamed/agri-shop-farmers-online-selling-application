import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_groceries/view/account/my_cart_page.dart';
import 'package:online_groceries/view/explore/explore_view.dart';
import 'package:online_groceries/view/home/product_details_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Map<String, String>> exclusiveOffers = [
    {
      "image": "assets/img/banana.png",
      "title": "Organic Bananas",
      "price": "\$4.99",
      "quantity": "7pcs",
      "detail":
          "Bananas are nutritious. Bananas may be good for weight loss. Bananas may be good for your heart.",
      "calories": "89",
      "carbs": "22.8g",
      "fat": "0.3g",
      "fiber": "2.6g"
    },
    {
      "image": "assets/img/apple_red.png",
      "title": "Red Apple",
      "price": "\$4.99",
      "quantity": "1kg",
      "detail":
          "Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart.",
      "calories": "52",
      "carbs": "14g",
      "fat": "0.2g",
      "fiber": "2.4g"
    },
  ];

  final List<Map<String, String>> bestSelling = [
    {
      "image": "assets/img/pepper.png",
      "title": "Green Pepper",
      "price": "\$2.99",
      "quantity": "1kg",
      "detail":
          "Green peppers are nutritious. They are good for your health and can be used in various dishes.",
      "calories": "20",
      "carbs": "4.6g",
      "fat": "0.2g",
      "fiber": "1.7g"
    },
    {
      "image": "assets/img/lettuce.png",
      "title": "Lettuce",
      "price": "\$1.99",
      "quantity": "1kg",
      "detail":
          "Lettuce is nutritious. It is good for your health and can be used in various dishes.",
      "calories": "15",
      "carbs": "2.9g",
      "fat": "0.2g",
      "fiber": "1.3g"
    },
  ];

  final List<String> productNames = [
    "Moos",
    "tufaax Gaduud",
    "Barbarooni cagaar",
    "Lettuce",
  ];

  TextEditingController searchController = TextEditingController();
  List<String> searchResults = [];

  @override
  void initState() {
    super.initState();
    searchController.addListener(() {
      setState(() {
        searchResults = productNames
            .where((product) => product
                .toLowerCase()
                .contains(searchController.text.toLowerCase()))
            .toList();
      });
    });
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 1) {
      Get.to(() => ExploreView());
    } else if (index == 2) {
      Get.to(() => CartPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Column(
          children: [
            Text(
              "Dhaka, Banassre",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            SizedBox(height: 8),
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  hintText: "Search Store",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ),
            if (searchController.text.isNotEmpty && searchResults.isNotEmpty)
              Container(
                constraints: BoxConstraints(maxHeight: 100),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: searchResults.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(searchResults[index]),
                      onTap: () {
                        setState(() {
                          searchController.text = searchResults[index];
                          searchResults.clear();
                        });
                      },
                    );
                  },
                ),
              ),
          ],
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Banner
          Container(
            height: 180,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/img/banner_top.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20),
          // Exclusive Offers
          Text(
            "Exclusive Offer",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          buildGridView(exclusiveOffers, context),
          SizedBox(height: 20),
          // Best Selling
          Text(
            "Best Selling",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          buildGridView(bestSelling, context),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Shop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
      ),
    );
  }

  Widget buildGridView(List<Map<String, String>> items, BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3, // Adjusted aspect ratio to fit content better
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ProductDetailView(
                imageUrl: items[index]['image']!,
                title: items[index]['title']!,
                quantity: items[index]['quantity']!,
                price: items[index]['price']!,
                productDetail: items[index]['detail']!,
                nutrition: {
                  "Calories": items[index]['calories']!,
                  "Carbs": items[index]['carbs']!,
                  "Fat": items[index]['fat']!,
                  "Fiber": items[index]['fiber']!
                },
              ),
            ));
          },
          child: Container(
            height: 240, // Adjust height to fit content and prevent overflow
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(10)),
                    child: Image.asset(
                      items[index]['image']!,
                      height: 120,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      items[index]['title']!,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      items[index]['quantity']!,
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          items[index]['price']!,
                          style: TextStyle(fontSize: 16, color: Colors.green),
                        ),
                        IconButton(
                          icon: Icon(Icons.add_circle, color: Colors.green),
                          onPressed: () {},
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
