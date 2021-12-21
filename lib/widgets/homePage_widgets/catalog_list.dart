// ignore_for_file: prefer_const_constructors, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:flutter_catlog/widgets/themes.dart';

import 'package:velocity_x/velocity_x.dart';

import 'catalo_image.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogMaodel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogMaodel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item? catalog;

  const CatalogItem({Key? key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog!.Id.toString()),
          child: ProductImage(
            image: catalog!.image,
          ),
        ),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog!.name.text.color(Mytheme.darkBluishColor).lg.bold.make(),
            catalog!.desc.text.textStyle(context.captionStyle!).make(),
            ButtonBar(
              buttonPadding: EdgeInsets.zero,
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\$${catalog!.price}".text.bold.xl.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Mytheme.darkBluishColor),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    ),
                  ),
                  child: "Add to Cart".text.bold.xl.make(),
                )
              ],
            ).pOnly(right: 8.0),
          ],
        ))
      ],
    )).white.roundedSM.square(150).make().py16();
  }
}
