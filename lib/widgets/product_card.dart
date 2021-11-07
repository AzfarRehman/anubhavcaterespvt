import 'package:anubhavcaterespvt/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({

    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(width: MediaQuery.of(context).size.width/2.5,
        height: 150,
        child: Image.network(product.imageUrl, fit: BoxFit.cover,),

      ),
      Positioned(
        top: 60,
        child: Container(width: MediaQuery.of(context).size.width/2.5 ,
          height: 80,
          decoration: BoxDecoration(
            color:Colors.black.withAlpha(50),
          ),
        ),
      ),
      Positioned(
        top: 65,
        left: 5,
        child: Container(width: MediaQuery.of(context).size.width/2.5 - 10,
          height: 70,
          decoration: const BoxDecoration(
            color:Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children:
            [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(product.name, style:
                    const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 17
                    ),
                    ),
                    Text(
                      '\$${product.price}',
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      )

                      ,)
                  ],
                ),
              ),
              Expanded(
                child: IconButton(icon: const Icon(Icons.add_circle,
                  color: Colors.white,),
                  onPressed: (){},
                ),
              ),
            ],),
          ),
        ),
      ),



    ],
    );
  }
}