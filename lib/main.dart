import 'package:ecom/models/shop.dart';
import 'package:ecom/pages/cart.dart';

import 'pages/intro.dart';
import 'package:flutter/material.dart';
import 'pages/shop.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intro(),
      routes: {
        'intropage': (context) => Intro(),
        'shop': (context) => ShopPage(),
        'intro': (context) => Intro(),
        'cart': (context) => CartPage()
      },
    );
  }
}
