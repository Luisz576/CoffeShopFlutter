import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';

class ProductsFilter extends StatelessWidget {
  ProductsFilter({super.key});

	final filterItems = ["All", "Machiato", "Latte", "Americano"];
	final selected = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Expanded( // TODO: FIX HERE
			child: ListView.builder(
				scrollDirection: Axis.horizontal,
				itemCount: filterItems.length,
				itemBuilder: (context, index) => Card(
					margin: EdgeInsets.zero,
					color: selected.value == index ? CoffeeShopColors.primaryColor : Colors.transparent,
					child: Text(filterItems[index],
						style: TextStyle(
							color: selected.value == index ? CoffeeShopColors.whiteColor : CoffeeShopColors.blackColor,
						),
					),
				),
			),
		);
  }
}
