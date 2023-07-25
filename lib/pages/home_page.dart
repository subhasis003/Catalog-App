import "package:flutter/material.dart";

import "../widgets/drawer.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Subhasis";
    num temp = 30.6;

    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        // elevation: 0.0,
        // iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Catalog App",

        ),
      ),
      body: Center(
        child: Container(
          child: Text("$name welcomes you to $days days of flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
