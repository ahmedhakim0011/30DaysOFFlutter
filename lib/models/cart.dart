import 'package:flutter_catlog/models/catalog.dart';

//add to cart whole functional model //

class CartModel {
  //catalog field

  CatalogMaodel? _catalog;

  //collection of IDS -store ids of each Item

  final List<int> _itemIds = [];

  CatalogMaodel? get catalog => _catalog;

  set catalog(CatalogMaodel? newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }

  //getting item in cart
  List<Item> get item => _itemIds.map((id) => _catalog!.getByID(id)).toList();

//get total price
  num get totalPrice =>
      item.fold(0, (previousValue, element) => previousValue + element.price);

  //add item
  void add(Item item) {
    _itemIds.add(item.Id);
  }
  //remove item

  void remove(Item item) {
    _itemIds.remove(item.Id);
  }
}
