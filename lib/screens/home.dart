import 'package:flutter/material.dart';
import 'package:testone/widget/Product.dart';
import 'package:testone/widget/ProductWidget.dart';

import '../widget/bottomnavigationbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Product> products = [
    Product(
      name: 'Regular Fit Slogan',
      price: 1190,
      details: 'Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them',
      imagePath: 'assets/images/image.png',
      quantity: 5,
      size: 'Size L',
    ),
    Product(
      name: 'Regular Fit Polo',
      price: 10,
      details: 'Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them',
      imagePath: 'assets/images/shoes.png',
      quantity: 5,
      size: 'Size M',
    ),
    Product(
      name: 'Regular Fit Slogan',
      price: 1190,
      details: 'Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them',
      imagePath: 'assets/images/image.png',
      quantity: 5,
      size: 'Size L',
    ),
    Product(
      name: 'Regular Fit Polo',
      price: 10,
      details: 'Blue T Shirt . Good for All Men and Suits for All of Them.Blue T Shirt . Good for All Men and Suits for All of Them',
      imagePath: 'assets/images/shoes.png',
      quantity: 5,
      size: 'Size M',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 59),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Discover",
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.filter_alt, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text('All', style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text('Tshirts', style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text('Jeans', style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text('Shoes', style: TextStyle(fontSize: 16)),
                  ),
                  SizedBox(width: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Text('Jeans', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(vertical: 20),
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return Productwidget(product: products[index]);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 0,)
    );
  }
}
