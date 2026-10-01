import 'package:flutter/material.dart';
import 'package:testone/widget/button_widget.dart';

import '../widget/product_model.dart';
import '../widget/product_widget.dart';
import '../widget/bottomnavigationbar_widget.dart';

class CartScreen extends StatefulWidget {
  CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<Product> products = [
    Product(
      name: 'tshirt',
      price: 10,
      details: 'sfas',
      imagePath: 'assets/images/image.png',
      quantity: 5,
      size: '156',
    ),
    Product(
      name: 'tshirt',
      price: 10,
      details: 'sfas',
      imagePath: 'assets/images/shoes.png',
      quantity: 5,
      size: '156',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Cart',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.only(left: 12,right: 12,bottom: 20),
                itemCount: products.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return CustomContainerProduct(product: products[index]);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sub-Total',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  '\$ 5,870',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'VAT (%)',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  '\$ 0.0',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Shipping-fee',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                Text(
                  '\$ 80',
                  style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Divider(thickness: 2,color: Colors.grey,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total',
                  style: TextStyle(color: Colors.grey, fontSize: 16,fontWeight: FontWeight.bold),
                ),
                Text(
                  '\$ 5.950',
                  style: TextStyle(fontSize: 16,fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 50,),
            CustomButton(textbutton: "Go To Checkout    ⮕", onTap: (){}),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(currentIndex: 1,),
    );
  }
}
