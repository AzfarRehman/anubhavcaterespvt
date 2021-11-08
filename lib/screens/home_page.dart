
import 'package:anubhavcaterespvt/models/carousel_option.dart';
import 'package:anubhavcaterespvt/models/model.dart';
import 'package:anubhavcaterespvt/widgets/hero_carousel.dart';
import 'package:anubhavcaterespvt/widgets/product_card.dart';
import 'package:anubhavcaterespvt/widgets/product_carousel.dart';
import 'package:anubhavcaterespvt/widgets/section_title.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,

      appBar: AppBar(

            backgroundColor: Colors.black,
            elevation: 0,
      ),


      body: Container(




          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  //decoration: BoxDecoration(
                    //  border: Border.all(color: Colors.amberAccent, width: 5),
                   //   borderRadius: const BorderRadius.all(
                     //    Radius.circular(20.0)),
                     // boxShadow: const [BoxShadow(blurRadius: 5,color: Colors.black,offset: Offset(1,1))]
                    //  //Border------------------------------------------------
                    //        // ------------------------------------
                    //        // -----
                    // Make rounded corner of border
               //   ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1.5,
                      viewportFraction: 0.9,
                      enlargeCenterPage: true,
                     enableInfiniteScroll: true,


                    //  enlargeStrategy: CenterPageEnlargeStrategy.height, //Reduce space between card
                      autoPlay: true




                    ),
                    items: Category.categories.map((category) =>
                        HeroCarouselCard(category: category)).toList(),
                  ),
                ),
              ),
              const SectionTitle(title: 'RECOMMENDED'),

               ProductCarousel(products : Product.products
                  .where((product) => product.isRecommended).toList()),

           //   const SectionTitle(title: 'MOST POPULAR'),

            //  ProductCarousel(products : Product.products
              //    .where((product) => product.isPopular).toList()),



            ],
          )
      ),
    );
  }
}






