import 'package:flutter/material.dart';

import '../../models/products.dart';

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
      body: SingleChildScrollView(
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
                return Column(
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
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
