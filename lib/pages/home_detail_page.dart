import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\u{20B9}${catalog.price}"
                .text
                .bold
                .xl3
                .color(Colors.red[800])
                .make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    context.theme.highlightColor,
                  ),
                  shape: MaterialStateProperty.all(const StadiumBorder())),
              child: "Add to Cart".text.lg.make(),
            ).wh(125, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context).p8(),
            Expanded(
                child: VxArc(
              arcType: VxArcType.convey,
              edge: VxEdge.top,
              height: 30.0,
              child: Container(
                color: context.cardColor,
                width: context.screenWidth,
                child: Column(
                  children: [
                    catalog.name.text.xl4
                        .color(context.accentColor)
                        .bold
                        .make(),
                    catalog.desc.text.textStyle(context.captionStyle).lg.make(),
                    10.heightBox,
                    "Consequat laboris sint do officia enim esse consequat Lorem non. Ipsum eu non pariatur ipsum cillum duis laboris pariatur culpa sunt fugiat irure. Tempor esse consectetur velit ea et elit exercitation. Aliqua Eiusmod ad"
                        .text
                        .textStyle(context.captionStyle)
                        .align(TextAlign.justify)
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
