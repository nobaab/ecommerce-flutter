class Categories {
  String name;
  String image;
  Categories({required this.name, required this.image});

  static List<Categories> getCategories() {
    return <Categories>[
      Categories(
        name: 'Man',
        image: 'assets/images/categories/maneshoe.svg',
      ),
      Categories(
        name: 'Women',
        image: 'assets/images/categories/womenshoe.svg',
      ),
      Categories(
        name: 'Devices',
        image: 'assets/images/categories/devices.svg',
      ),
      Categories(
        name: 'Gadets',
        image: 'assets/images/categories/gadets.svg',
      ),
      Categories(
        name: 'Gaming',
        image: 'assets/images/categories/gaming.svg',
      ),
      Categories(
        name: 'Man',
        image: 'assets/images/categories/maneshoe.svg',
      ),
      Categories(
        name: 'Women',
        image: 'assets/images/categories/womenshoe.svg',
      ),
      Categories(
        name: 'Devices',
        image: 'assets/images/categories/devices.svg',
      ),
      Categories(
        name: 'Gadets',
        image: 'assets/images/categories/gadets.svg',
      ),
      Categories(
        name: 'Gaming',
        image: 'assets/images/categories/gaming.svg',
      ),
    ];
  }
}
