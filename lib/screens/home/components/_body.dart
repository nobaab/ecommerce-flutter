import 'package:ecommerce/models/categories.dart';
import 'package:ecommerce/models/products.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../products/categories.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    Key? key,
    required this.categories,
    required this.products,
  }) : super(key: key);

  final List<Categories> categories;
  final List<Products> products;

  @override
  Widget build(BuildContext context) {
    int selectedIndex;
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     Container(
          //       height: 40,
          //       width: 290,
          //       decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(20),
          //         color: Colors.grey[200],
          //       ),
          //       child: const TextField(
          //         decoration: InputDecoration(
          //           border: InputBorder.none,
          //           prefixIcon: Icon(
          //             Icons.search,
          //             color: Colors.black,
          //           ),
          //         ),
          //       ),
          //     ),
          //     const Icon(
          //       Icons.camera_alt_rounded,
          //       color: Color(0xFF00C569),
          //       size: 30,
          //     ),
          //   ],
          // ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 240.0),
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 100,
            width: 350,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: categories.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 30),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      print(index);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          categories[index].image,
                          height: 30,
                          width: 30,
                        ),
                        Text(
                          categories[index].name,
                          style: const TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 290,
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 4,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length < 2 ? products.length : 2,
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
          ),
          const SizedBox(
            height: 40,
          ),
          Image.asset("assets/images/products/promoimage.png",
              height: 160, width: 343),
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 200.0),
            child: Text(
              "Featured Brands",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Featured Brands Components
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0x00707070),
                      ),
                      height: 100,
                      width: 200,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const CategoriesDetails()));
                        },
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                      'assets/images/products/Icon_B&o.png')),
                              const Text('B&o',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Color(0x00707070),
                      ),
                      height: 100,
                      width: 200,
                      child: InkWell(
                        onTap: () {
                          print('hello');
                        },
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                      'assets/images/products/Icon_Beats.png')),
                              const Text('Beats',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 3,
              mainAxisSpacing: 10,
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
                    style:
                        const TextStyle(fontSize: 12, color: Color(0xFF929292)),
                  ),
                  Text(
                    products[index].price,
                    style:
                        const TextStyle(fontSize: 16, color: Color(0xFF00C569)),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
