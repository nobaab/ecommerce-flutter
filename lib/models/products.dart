import 'package:flutter/cupertino.dart';

class Products {
  Products(
      {required this.title,
      required this.description,
      required this.price,
      required this.imageUrl,
      required this.size,
      required this.color,
      required this.fullDecription});

  final String title;
  final String description;
  final String price;
  final String imageUrl;
  final String size;
  final Color color;
  final String fullDecription;

  static List<Products> getProducts() {
    return <Products>[
      Products(
          title: "BeoPlay Speaker",
          description: "Bang and Olufsen",
          price: '\$200',
          imageUrl: "assets/images/products/speaker.png",
          size: "M",
          color: const Color(0xFF3D82AE),
          fullDecription:
              "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
      Products(
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          price: '\$400',
          imageUrl: "assets/images/products/watch.png",
          size: "M",
          color: const Color(0xFF3D82AE),
          fullDecription:
              "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
      Products(
          title: "B&o Desk Lamp",
          description: "Bang and Olufsen",
          price: '\$450',
          imageUrl: "assets/images/products/lamp.png",
          size: "M",
          color: const Color(0xFF3D82AE),
          fullDecription:
              "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
      Products(
          title: "BeoPlay Stand Speaker",
          description: "Bang and Olufsen",
          price: '\$300',
          imageUrl: "assets/images/products/speaker1.png",
          size: "M",
          color: const Color(0xFF3D82AE),
          fullDecription:
              "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
      Products(
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          price: '\$400',
          imageUrl: "assets/images/products/watch.png",
          size: "M",
          color: const Color(0xFF3D82AE),
          fullDecription:
              "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
      Products(
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          price: '\$400',
          imageUrl: "assets/images/products/watch.png",
          size: "M",
          color: const Color(0xFF3D82AE),
          fullDecription:
              "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
      Products(
          title: "Nike Dri-FIT Long Sleeve",
          description: "Long Sleeve",
          price: '\$200',
          imageUrl: "assets/images/products/nike.png",
          size: "XL",
          color: const Color(0xFF3D82AE),
          fullDecription:
              "Nike Dri-FIT is a polyester fabric designed to help you keep dry so you can more comfortably work harder, longer."),
    ];
  }
}
