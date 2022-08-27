import 'package:ecommerce/models/products.dart';
import 'package:ecommerce/utils/colors.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final Products product;
  const ProductDetails({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 53.0),
            child: Stack(
              children: [
                SizedBox(
                  height: 500,
                  child: Image.asset(
                    product.imageUrl,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, top: 20),
                  child: IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 320.0, top: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: ePrimaryColor,
                          width: 2,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50))),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.star_border_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Row(
              children: [
                Text(
                  product.title,
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
