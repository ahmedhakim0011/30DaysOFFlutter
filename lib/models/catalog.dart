// @dart=2.9
// ignore_for_file: non_constant_identifier_names, empty_constructor_bodies
class CatalogMaodel {
  static List<Item> items;

//Get Item by id
  Item getByID(int id) =>
      items.firstWhere((element) => element.Id == id, orElse: null);

  Item getByPosition(int pos) => items[pos];
}

class Item {
  final int Id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({this.Id, this.name, this.desc, this.price, this.color, this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      Id: map["Id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMAp() => {
        "id": Id,
        "name": name,
        "desc": Id,
        "price": price,
        "color": color,
        "image": image,
      };
}
