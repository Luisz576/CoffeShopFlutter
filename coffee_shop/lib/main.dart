import 'package:coffee_shop/app/injector.dart';
import 'package:coffee_shop/app/translatable_text.dart';
import 'package:coffee_shop/app/ui/coffee_shop_app.dart';
import 'package:flutter/material.dart';

void main(){
	TranslatableText.setup();
	setupInjector();

  runApp(const CoffeeShopApp());
}
