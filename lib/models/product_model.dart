 import 'package:equatable/equatable.dart';

class Product extends Equatable{
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

 const Product(
     {
       required this.name,
       required this.category,
       required this.imageUrl,
       required this.price,
       required this.isRecommended,
       required this.isPopular,
     });





  @override
  List<Object?> get props => [
    name,
    category,
    imageUrl,
    price,
    isRecommended,
    isPopular,
  ];

  static List <Product> products =[
    const Product(
        name:'SoftDrink #1',
      category: 'Soft Drinks',
       imageUrl: 'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=780&q=80',
       price: 2.99,
      isPopular: false,
      isRecommended: true,
    ),
    const Product(
      name:'SoftDrink #2',
      category: 'Soft Drinks',
      imageUrl: 'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80',
      price: 2.99,
      isPopular: false,
      isRecommended: true,

    ),
    const Product(
      name:'SoftDrink #3',
      category: 'Soft Drinks',
      imageUrl: 'https://images.unsplash.com/photo-1511690656952-34342bb7c2f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=764&q=80',
      price: 2.99,
      isPopular: false,
      isRecommended: true,

    ),
    const Product(
      name:'Love #1',
      category: 'Love',
      imageUrl: 'https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2074&q=80',
      price: 2.99,
      isPopular: false,
      isRecommended: true,

    ),
    const Product(
      name:'Love #2',
      category: 'Love',
      imageUrl: 'https://images.unsplash.com/reserve/Af0sF2OS5S5gatqrKzVP_Silhoutte.jpg?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2074&q=80',
      price: 2.99,
      isPopular: false,
      isRecommended: true,

    ),
  ];



}