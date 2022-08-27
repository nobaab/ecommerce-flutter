import 'package:flutter/material.dart';

import '../../models/products.dart';
import 'components/_body.dart';

class CategoriesDetails extends StatefulWidget {
  const CategoriesDetails({Key? key}) : super(key: key);

  @override
  State<CategoriesDetails> createState() => _CategoriesDetailsState();
}

class _CategoriesDetailsState extends State<CategoriesDetails> {
  List<Products> products = Products.getProducts();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          "B&o",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.search_rounded,
            color: Color(0xFF00C569),
            size: 30,
          ),
        ],
      ),
      bottomNavigationBar: SizedBox(
        height: 84,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "No Filter Applied",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(146, 50),
                  primary: const Color(0xFF00C569),
                ),
                child: const Text(
                  ' FILTER',
                  style: TextStyle(fontSize: 17),
                ))
          ],
        ),
      ),
      body: CategoryBody(products: products),
    );
  }
}
