import 'package:ecom/components/my_drawer.dart';
import 'package:ecom/components/product_tile.dart';
import 'package:ecom/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Shop"),
          centerTitle: true,
        ),
        drawer: MyDrawer(),
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            Center(
                child: Text(
              "select products from a collection of quality",
              style: TextStyle(color: Theme.of(context).colorScheme.secondary),
            )),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(15),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductTile(product: product);
                },
              ),
            ),
            SizedBox(
              height: 550,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.all(15),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return ProductTile(product: product);
                },
              ),
            )
          ],
        ));
  }
}
