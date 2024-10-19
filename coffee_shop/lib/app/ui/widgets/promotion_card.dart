import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
			width: MediaQuery.of(context).size.width - 40,
			child: Card(
				color: CoffeeShopColors.primaryColor,
				child: Text("Promotion"),
			),
		);
  }
}
