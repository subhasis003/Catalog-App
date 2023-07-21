import "package:flutter/material.dart";

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    int days = 30;
    String name = "Subhasis";
    num temp = 30.6;

    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("$name welcomes you to $days days of flutter"),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
