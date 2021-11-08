import 'package:anubhavcaterespvt/models/product_model.dart';
import 'package:anubhavcaterespvt/widgets/product_card.dart';
import 'package:flutter/material.dart';


class PlateScreen extends StatelessWidget {
  const PlateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
          gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1, childAspectRatio: 2.2),
          itemCount: Product.products.length,
          itemBuilder: (BuildContext context, int index)
          {
            return Center(
              child: ProductCard(
                product: Product.products[index],
                widthFactor: 1.1,
              ),
            );

          }
      )
    );
  }
}
