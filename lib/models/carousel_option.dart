import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String name;
  final String imageUrl;

  const Category({required this.name, required this.imageUrl});


  @override
  List<Object?> get props => [name, imageUrl];

  static List<Category> categories = [
    const Category(
        name: 'Soft Drink',
        imageUrl: 'https://images.unsplash.com/photo-1546527050-7e08a7f44112?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1471&q=80'
    ),
    const Category(
        name: 'Coca Cola',
        imageUrl: 'https://images.unsplash.com/photo-1591254460606-fab865bf82b8?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1632&q=80'
    ),
    const Category(
        name: 'Ice Cream',
        imageUrl: 'https://images.unsplash.com/photo-1563252781-2f76e089e889?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1470&q=80'
    ),

  ];
}