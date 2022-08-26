import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:ecommerce/models/products.dart';
import 'package:ecommerce/screens/home/components/_body.dart';
import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../../models/categories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Categories> categories = Categories.getCategories();
  List<Products> products = Products.getProducts();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        actions: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 20),
                height: 40,
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_rounded,
                  color: Color(0xFF00C569),
                  size: 30,
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: FloatingNavigationBar(
        barHeight: 80.0,
        barWidth: MediaQuery.of(context).size.width - 40.0,
        backgroundColor: Colors.white,
        iconColor: Colors.black,
        textStyle: const TextStyle(
          color: Colors.black,
          fontSize: 14.0,
        ),
        iconSize: 20.0,
        indicatorColor: const Color(0xFF00C569),
        indicatorHeight: 5,
        indicatorWidth: 14.0,
        items: [
          NavBarItems(icon: Icons.home, title: "Explore"),
          NavBarItems(icon: Icons.shopping_basket_sharp, title: "Cart"),
          NavBarItems(icon: Icons.person, title: "Profile"),
        ],
        onChanged: (value) {},
      ),
      body: HomePageBody(categories: categories, products: products),
    );
  }
}
