import 'package:flutter/material.dart';
import 'package:testone/widget/Product.dart';

class Productwidget extends StatelessWidget {
  final Product product;
  Productwidget({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, "/details_screen",arguments: {
            "name" : product.name,
            "urlimage" : product.imagePath,
            "detalis" : product.details,
            "price" : product.price
          });
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          height: 110,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white60,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 2, color: Colors.grey),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Image.asset(product.imagePath, width: 80, height: 80),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text(
                              product.name,
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Icon(Icons.delete, color: Colors.red),
                        ],
                      ),
                      Text(
                        product.size,
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ ${product.price}",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(5.0)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.add),
                                  iconSize: 18,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Text(
                                "${product.quantity}",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 35,
                                width: 35,
                                decoration: BoxDecoration(border: Border.all(width: 1),borderRadius: BorderRadius.circular(5.0)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                  iconSize: 18,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
