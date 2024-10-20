import 'package:coffee_shop/app/interactor/entities/promotion_entity.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
	final PromotionEntity promotion;

  const PromotionCard({
		required this.promotion,
		super.key
	});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
			width: MediaQuery.of(context).size.width - 40,
			child: Card(
				color: CoffeeShopColors.primaryColor,
				child: Padding(
					padding: const EdgeInsets.all(20),
					child: Text(promotion.title),
				),
			),
		);
  }
}
