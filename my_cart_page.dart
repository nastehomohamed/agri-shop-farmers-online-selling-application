import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> cartItems = [
      {
        "image": "assets/img/pepper.png",
        "title": "Bell Pepper Red",
        "quantity": "1kg",
        "price": 4.99,
      },
      {
        "image": "assets/img/egg.png",
        "title": "Egg Chicken Red",
        "quantity": "4pcs",
        "price": 1.99,
      },
      {
        "image": "assets/img/banana.png",
        "title": "Organic Bananas",
        "quantity": "12kg",
        "price": 3.00,
      },
      {
        "image": "assets/img/ginger.png",
        "title": "Ginger",
        "quantity": "250gm",
        "price": 2.99,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        centerTitle: true,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: cartItems.length,
        itemBuilder: (context, index) {
          final item = cartItems[index];
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    item['image'],
                    height: 60,
                    width: 60,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item['title'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          item['quantity'],
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.remove_circle, color: Colors.green),
                        onPressed: () {
                          // Handle decrement logic
                        },
                      ),
                      Text(
                        '1', // Replace with the actual quantity
                        style: TextStyle(fontSize: 16),
                      ),
                      IconButton(
                        icon: Icon(Icons.add_circle, color: Colors.green),
                        onPressed: () {
                          // Handle increment logic
                        },
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Text(
                    "\$${item['price']}",
                    style: TextStyle(fontSize: 16, color: Colors.green),
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      // Handle remove item logic
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
          onPressed: () {
            // Handle checkout logic
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Go to Checkout",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              Text(
                "\$12.96", // Replace with the actual total price
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
