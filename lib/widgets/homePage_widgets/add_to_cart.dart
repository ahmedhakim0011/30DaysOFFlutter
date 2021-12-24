// @dart=2.9

// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catlog/models/cart.dart';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:velocity_x/src/extensions/bool_ext.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/extensions/string_ext.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
  AddToCart({
    Key key,
    this.catalog,
  }) : super(key: key);

  final _cart = CartModel();

  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog) ?? false;

    return ElevatedButton(
        onPressed: () {
          if (!isInCart) {
            isInCart = isInCart.toggle();

            final _catalog = CatalogModel();
            _cart.catalog = _catalog;
            _cart.add(catalog);
          }
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
                isInCart ? Colors.green : context.theme.buttonColor),
            shape: MaterialStateProperty.all(
              StadiumBorder(),
            )),
        child: isInCart
            ? Icon(
                Icons.done,
                color: Colors.white,
              )
            : Icon(CupertinoIcons.cart_badge_plus));
  }
}
