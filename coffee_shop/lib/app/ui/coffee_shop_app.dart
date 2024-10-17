import 'package:coffee_shop/app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
			title: "Coffee Shop",
			debugShowCheckedModeBanner: false,
			home: HomeScreen(),
		);
  }
}
