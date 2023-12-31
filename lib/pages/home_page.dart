// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
// import "dart:html";

import "package:flutter/material.dart";
import "package:flutter/services.dart";
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';

import "package:flutter_catalog/models/catalog.dart";
import 'package:flutter_catalog/utils/routes.dart';

import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final url = "";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final cart = (VxState.store as MyStore).cart;
    return Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: VxBuilder(
        mutations: const {AddMutation, RemoveMutation},
        builder: (context, _, __) => FloatingActionButton(
          backgroundColor: context.theme.highlightColor,
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.cartRoute);
          },
          child: const Icon(
            Icons.shopping_cart_outlined,
            color: Colors.white,
          ),
        ).badge(
            color: Vx.red500,
            size: 22,
            count: cart.items.length,
            textStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            )),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CatatlogHeader(),
              if (CatalogModel.items.isNotEmpty)
                const CatalogList().py16().expand()
              else
                const CircularProgressIndicator().centered().expand(),
            ],
          ),
        ),
      ),
    );
  }
}
