import 'package:ecom/components/button.dart';
import 'package:ecom/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().getcart();
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text("Cart"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: ListView.builder(
            itemCount: cart.length,
            itemBuilder: (context, index) {
              final item = cart[index];

              return ListTile(
                leading: Icon(Icons.favorite),
                title: Text(item.name),
                subtitle: Text(item.price.toStringAsFixed(2)),
                trailing: Icon(Icons.delete),
              );
            },
          )),
          Column(
            children: [
              Center(
                  child: Container(
                margin: EdgeInsets.all(25),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    "CHECKOUT",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ))
            ],
          )
        ],
      ),
    );
  }
}
