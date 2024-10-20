import 'package:coffee_shop/app/interactor/entities/promotion_entity.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
			height: 160,
			child: Card(
				margin: EdgeInsets.zero,
				color: CoffeeShopColors.primaryColor,
				child: Padding(
					padding: const EdgeInsets.all(20),
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Card(
								shadowColor: Colors.transparent,
								margin: EdgeInsets.zero,
								color: CoffeeShopColors.redColor,
								child: Padding(
									padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
									child: Text("Promo",
										style: GoogleFonts.sora(
											letterSpacing: 1,
											fontWeight: FontWeight.w700,
											color: CoffeeShopColors.whiteColor
										),
									),
								),
							),
							const SizedBox(height: 10,),
							Padding(
								padding: const EdgeInsets.only(right: 50),
								child: Text(promotion.title,
									style: GoogleFonts.sora(
										letterSpacing: 1,
										fontWeight: FontWeight.w700,
										color: CoffeeShopColors.whiteColor,
										fontSize: 28
									),
								),
							)
						],
					),
				),
			),
		);
	}
}
