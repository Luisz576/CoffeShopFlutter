import 'package:coffee_shop/app/translatable_text.dart';
import 'package:coffee_shop/app/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CoffeeShopApp extends StatelessWidget {
  const CoffeeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
			title: TranslatableText.text(TranslatableTextKey.APP_NAME),
			debugShowCheckedModeBanner: false,
			home: const HomeScreen(),
		);
  }
}
