import 'package:anubhavcaterespvt/models/model.dart';

abstract class BaseProductRepository{
  Stream<List<Product>> getAllProducts();
}