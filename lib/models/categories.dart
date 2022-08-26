class Categories {
  String id;
  String name;
  String image;
  Categories({required this.id, required this.name, required this.image});

  static List<Categories> getCategories() {
    return <Categories>[
      Categories(
        id: "1",
        name: 'Man',
        image: 'assets/images/categories/maneshoe.svg',
      ),
      Categories(
        id: "2",
        name: 'Women',
        image: 'assets/images/categories/womenshoe.svg',
      ),
      Categories(
        id: "3",
        name: 'Devices',
        image: 'assets/images/categories/devices.svg',
      ),
      Categories(
        id: "4",
        name: 'Gadets',
        image: 'assets/images/categories/gadets.svg',
      ),
      Categories(
        id: "5",
        name: 'Gaming',
        image: 'assets/images/categories/gaming.svg',
      ),
      Categories(
        id: "6",
        name: 'Man',
        image: 'assets/images/categories/maneshoe.svg',
      ),
      Categories(
        id: "6",
        name: 'Women',
        image: 'assets/images/categories/womenshoe.svg',
      ),
      Categories(
        id: "7",
        name: 'Devices',
        image: 'assets/images/categories/devices.svg',
      ),
      Categories(
        id: "8",
        name: 'Gadets',
        image: 'assets/images/categories/gadets.svg',
      ),
      Categories(
        id: "9",
        name: 'Gaming',
        image: 'assets/images/categories/gaming.svg',
      ),
    ];
  }
}
