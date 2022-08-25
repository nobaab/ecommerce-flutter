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
    ];
  }
}
