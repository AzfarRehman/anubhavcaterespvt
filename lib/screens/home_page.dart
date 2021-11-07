import 'package:anubhavcaterespvt/models/model.dart';
import 'package:anubhavcaterespvt/widgets/hero_carousel.dart';
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

          //Border------------------------------------------------
       // ------------------------------------
       // -----

          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,




            ),
            items: Category.categories.map((category) =>
                HeroCarouselCard(category: category)).toList(),
          )
      ),
    );
  }
}

