import 'package:ecom/components/nav_tile.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //header
              DrawerHeader(
                  child: Center(
                child: Icon(
                  Icons.shopping_bag,
                  size: 70,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              )),
              //home
              NavTile(
                icon: Icon(Icons.home_outlined),
                title: Text("Home"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'shop');
                },
              ),
              //shop
              NavTile(
                icon: Icon(Icons.shopping_cart_outlined),
                title: Text("Cart"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, "cart");
                },
              ),
            ],
          ),
          //exit
          Padding(
            padding: const EdgeInsets.only(bottom: 35.0),
            child: NavTile(
              icon: Icon(Icons.logout_outlined),
              title: Text("Exit"),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamedAndRemoveUntil(
                    context, "intro", (route) => false);
              },
            ),
          )
        ],
      ),
    );
  }
}
