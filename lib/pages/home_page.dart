// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_local_variable, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_catlog/models/catalog.dart';
import 'package:flutter_catlog/widgets/drawer.dart';
import 'package:flutter_catlog/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepure";

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogMaodel.items != null && CatalogMaodel.items.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogMaodel.items.length,
                itemBuilder: (context, index) => ItemWidget(
                  item: CatalogMaodel.items[index],
                ),
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }

  void loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/cataloJson.json");
    final decodeData = jsonDecode(catalogJson);
    var productsData = decodeData["products"];
    CatalogMaodel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }
}
