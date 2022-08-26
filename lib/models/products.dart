class Products {
  Products({
    required this.title,
    required this.description,
    required this.price,
    required this.imageUrl,
  });

  final String title;
  final String description;
  final String price;
  final String imageUrl;

  static List<Products> getProducts() {
    return <Products>[
      Products(
          title: "BeoPlay Speaker",
          description: "Bang and Olufsen",
          price: '\$200',
          imageUrl: "assets/images/products/speaker.png"),
      Products(
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          price: '\$400',
          imageUrl: "assets/images/products/watch.png"),
      Products(
          title: "B&o Desk Lamp",
          description: "Bang and Olufsen",
          price: '\$450',
          imageUrl: "assets/images/products/lamp.png"),
      Products(
          title: "BeoPlay Stand Speaker",
          description: "Bang and Olufsen",
          price: '\$300',
          imageUrl: "assets/images/products/speaker1.png"),
      Products(
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          price: '\$400',
          imageUrl: "assets/images/products/watch.png"),
      Products(
          title: "Leather Wristwatch",
          description: "Tag Heuer",
          price: '\$400',
          imageUrl: "assets/images/products/watch.png"),
    ];
  }
}
