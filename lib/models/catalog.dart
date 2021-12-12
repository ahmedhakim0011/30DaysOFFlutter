// ignore_for_file: non_constant_identifier_names

class Item {
  final String Id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgURL;

  Item(
      {required this.Id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imgURL});
}

final products = [
  Item(
    Id: "codepur001",
    name: "iphone 12 pro",
    desc: "Apple Iphone 12th generation",
    price: 999,
    color: "#33505a",
    imgURL:
        "https://myshop.pk/pub/media/catalog/product/cache/26f8091d81cea4b38d820a1d1a4f62be/a/p/apple_i_phone_12_pro-_myshop-pk-__4_1_1_1.jpg",
  ),
];
