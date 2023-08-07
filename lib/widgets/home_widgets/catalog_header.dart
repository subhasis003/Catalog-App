import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../themes.dart';

class CatatlogHeader extends StatelessWidget {
  const CatatlogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      "Catalog App".text.xl5.bold.color(context.theme.hintColor).make(),
      "Trending Products".text.xl2.make(),
    ]);
  }
}
