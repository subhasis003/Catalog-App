import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          cartList().p32().expand(),
          Divider(),
          cartTotal(),
        ],
      ),
    );
  }
}

class cartTotal extends StatelessWidget {
  const cartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          "\u{20B9}${9999}"
              .text
              .xl4
              .color(context.theme.colorScheme.secondary)
              .make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: "Buying not supported yet".text.white.make(),
                ),
              );
            },
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
              context.theme.highlightColor,
            )),
            child: "Buy".text.white.make(),
          ).w24(context)
        ],
      ),
    );
  }
}

class cartList extends StatefulWidget {
  const cartList({super.key});

  @override
  State<cartList> createState() => _cartListState();
}

class _cartListState extends State<cartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          icon: const Icon(
            Icons.remove_circle_outline,
          ),
          onPressed: () {},
        ),
        title: "Item 1".text.make(),
      ),
    );
  }
}
