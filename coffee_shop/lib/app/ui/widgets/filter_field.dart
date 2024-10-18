import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';

class FilterField extends StatelessWidget {
	final double? width, height;
	final double radius;
  const FilterField({this.width, this.height, this.radius = 10, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
			height: height,
			width: width,
			child: TextButton(
				style: TextButton.styleFrom(
					shape: RoundedRectangleBorder(
						side: BorderSide.none,
						borderRadius: BorderRadius.circular(radius)
					),
					backgroundColor: CoffeeShopColors.primaryColor,
				),
				onPressed: (){},
				child: const Icon(Icons.filter_list,
					color: CoffeeShopColors.whiteColor,
					size: 14,
					weight: 0.5,
				)
			),
		);
  }
}
