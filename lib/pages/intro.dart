import 'package:ecom/components/button.dart';
import 'package:flutter/material.dart';

class Intro extends StatefulWidget {
  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(
              Icons.shopping_bag,
              size: 72,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            //title
            SizedBox(
              height: 20,
            ),
            Text(
              "Shop",
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900),
            ),
            //subtitle
            SizedBox(
              height: 20,
            ),
            Text(
              "Get quality products everyday",
              style: TextStyle(color: Theme.of(context).colorScheme.primary),
            ),
            SizedBox(
              height: 10,
            ),
            //button
            MyButton(
                onTap: () {
                  Navigator.pushNamed(context, "shop");
                },
                color: Theme.of(context).colorScheme.secondary,
                icon: Icon(Icons.arrow_forward))
          ],
        ),
      ),
    );
  }
}
