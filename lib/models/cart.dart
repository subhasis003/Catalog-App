// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  //catalog field
  CatalogModel _catalog;
  CartModel(CatalogModel newCatalog) : _catalog = newCatalog;

  //collection of IDs -store IDs of each item
  final List<int> _itemIDs = [];

  //get catalog
  //get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //get items in the cart
  List<Item> get items => _itemIDs.map((id) => _catalog.getById(id)).toList();

  //get Total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  //add item
  void add(Item item) {
    _itemIDs.add(item.id);
  }

  //remove item
  void remove(Item item) {
    _itemIDs.remove(item.id);
  }
}
