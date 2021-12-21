// ignore_for_file: import_of_legacy_library_into_null_safe, unnecessary_import, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:flutter_catlog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailsPage extends StatelessWidget {
  final Item? catalog;

  const HomeDetailsPage({Key? key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog!.price}".text.bold.red800.xl4.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Mytheme.darkBluishColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "Add to cart".text.bold.xl.make(),
            ).wh(140, 50),
          ],
        ).p32(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Mytheme.creamColor,
      body: SafeArea(
          bottom: false,
          child: Column(
            children: [
              Hero(
                tag: Key(catalog!.Id.toString()),
                child: Image.network(
                  catalog!.image,
                ),
              ).h32(context),
              Expanded(
                  child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  width: context.screenWidth,
                  color: Colors.white,
                  child: Column(
                    children: [
                      catalog!.name.text.bold.xl4
                          .color(Mytheme.darkBluishColor)
                          .make(),
                      catalog!.desc.text
                          .textStyle(context.captionStyle!)
                          .xl
                          .make(),
                      10.heightBox,
                      "Eirmod sit lorem et at dolor lorem invidunt tempor nonumy dolores. Eirmod nonumy stet aliquyam lorem invidunt. Sea sanctus amet ea ut, justo labore accusam amet rebum kasd et sed nonumy vero. Dolor consetetur vero lorem gubergren stet stet et erat voluptua, sadipscing sed stet lorem eos diam. Sea elitr."
                          .text
                          .textStyle(context.captionStyle!)
                          .make()
                          .p16(),
                    ],
                  ).p64(),
                ),
              ))
            ],
          )),
    );
  }
}
