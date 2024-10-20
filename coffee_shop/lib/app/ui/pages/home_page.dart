import 'package:coffee_shop/app/interactor/entities/promotion_entity.dart';
import 'package:coffee_shop/app/ui/widgets/product/products_list.dart';
import 'package:coffee_shop/app/ui/widgets/promotion_card.dart';
import 'package:coffee_shop/app/ui/widgets/user_searsh.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
			child: Stack(
				children: [
					// # user + searsh #
					const UserSearsh(
						height: 200,
					),
					// # promotion #
					Column(
						crossAxisAlignment: CrossAxisAlignment.center,
						children: [
							const SizedBox(
								height: 130,
								width: double.infinity,
							),
							PromotionCard(
								promotion: PromotionEntity(
									id: 2,
									title: "Buy one get one free"
								),
							),
							const SizedBox(
								height: 20,
							),
							const ProductsList(),
						],
					),
				],
			),
		);
  }
}
