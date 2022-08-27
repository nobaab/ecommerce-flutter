import 'package:ecommerce/screens/products/productsdetails.dart';
import 'package:flutter/material.dart';

import '../../../models/products.dart';

class CategoryBody extends StatelessWidget {
  const CategoryBody({
    Key? key,
    required this.products,
  }) : super(key: key);

  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "All",
                  style: TextStyle(fontSize: 20),
                ),
                Text(
                  "Headphones",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Speakers",
                  style: TextStyle(fontSize: 16),
                ),
                Text(
                  "Microphones",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3.2,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ProductDetails(product: products[index])),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      products[index].imageUrl,
                      height: 240,
                      width: 164,
                    ),
                    Text(
                      products[index].title,
                      style: const TextStyle(fontSize: 16),
                    ),
                    Text(
                      products[index].description,
                      style: const TextStyle(
                          fontSize: 12, color: Color(0xFF929292)),
                    ),
                    Text(
                      products[index].price,
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xFF00C569)),
                    ),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
