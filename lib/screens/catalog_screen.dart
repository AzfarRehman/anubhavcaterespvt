import 'package:anubhavcaterespvt/models/model.dart';
import 'package:anubhavcaterespvt/widgets/product_card.dart';
import 'package:flutter/material.dart';
class CatalogScreen extends StatelessWidget {
  const CatalogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
                child: ProductCard(product: Product.products[0],
                  widthFactor: 2.2,
                )
            );
          }
      )

    );
  }
}
