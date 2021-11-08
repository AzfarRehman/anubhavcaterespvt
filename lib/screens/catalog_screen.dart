import 'package:anubhavcaterespvt/models/model.dart';
import 'package:anubhavcaterespvt/widgets/product_card.dart';
import 'package:flutter/material.dart';
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

   //  final List<Product> categoryProducts = Product.products.where((product) => product.category == ).toList();


    return Scaffold(
     // backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
    ),
      body: GridView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: 3,
          itemBuilder: (BuildContext context, int index)
          {
            return Center(
                child: ProductCard(
                  product: Product.products[index],
                  widthFactor: 2.2,
                ),
                );

          }
      )

    );
  }
}
