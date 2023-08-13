import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel catalog = CatalogModel();
  CartModel cart = CartModel();

  MyStore() {
    cart = CartModel();
    cart.catalog = catalog;
  }
}
