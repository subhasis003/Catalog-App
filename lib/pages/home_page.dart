import "package:flutter/material.dart";
import "package:flutter_catalog/models/catalog.dart";
import "package:flutter_catalog/widgets/item_widget.dart";

import "../widgets/drawer.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Subhasis";
    num temp = 30.6;
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Catalog App",
        ),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(item: dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
