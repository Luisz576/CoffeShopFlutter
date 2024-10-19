import 'package:coffee_shop/app/interactor/actions/session_actions.dart';
import 'package:coffee_shop/app/interactor/states/session_state.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:coffee_shop/app/ui/pages/home_page.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	@override
  void initState() {
    super.initState();
		if(sessionState.value.session == null){
			loginSession();
		}
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
			backgroundColor: CoffeeShopColors.whiteColor,
			body: HomePage(),
		);
  }
}
