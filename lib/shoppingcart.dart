import 'package:flutter/material.dart';

class shoppingcart extends StatelessWidget {
  const shoppingcart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Create lists for names, descriptions, costs, and image URLs
    List<String> names = [
      'Get it right pouch',
      'Get it right backpack',
      'Get it right Cup',
      'Get it right diary',
    ];
    List<String> descriptions = [
      'This is a pouch',
      'This is a backpack',
      'This is a cup',
      'This is a diary',
    ];
    List<String> costs = ['₹400', '₹500', '₹450', '₹450'];
    List<String> imageUrls = [
      'assets/cart/cartpouch.jpg',
      'assets/cart/cartbag.jpg',
      'assets/cart/cartmug.jpg',
      'assets/cart/cartdiary.jpg',
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Products',
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Colors.black, // Set text color to black
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.lightBlue, // Set appbar color to light blue
      ),
      body: ListView.builder(
        itemCount: names.length, // Number of products
        itemBuilder: (context, index) {
          return ShoppingCard(
            name: names[index],
            description: descriptions[index],
            cost: costs[index],
            imageUrl: imageUrls[index], // Pass image URL for each product
          );
        },
      ),
    );
  }
}

class ShoppingCard extends StatelessWidget {
  final String name;
  final String cost;
  final String description;
  final String imageUrl;

  const ShoppingCard({
    required this.name,
    required this.cost,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: SizedBox(
        height: 200, // Set card height
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      cost,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}