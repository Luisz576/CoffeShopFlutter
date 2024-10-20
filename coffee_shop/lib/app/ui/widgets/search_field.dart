import 'package:coffee_shop/app/translatable_text.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchField extends StatelessWidget {
	final int flex;
	final double radius;
  const SearchField({this.flex = 1, this.radius = 10, super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
			flex: flex,
			child: Container(
				decoration: BoxDecoration(
					borderRadius: BorderRadius.all(Radius.circular(radius)),
					gradient: const LinearGradient(
						begin: Alignment.topRight,
						end: Alignment.bottomLeft,
						stops: [0.1, 0.8],
						colors: [CoffeeShopColors.darkGrayColor, CoffeeShopColors.blackColor]
					)
				),
				child: TextField(
					decoration: InputDecoration(
						border: OutlineInputBorder(
							borderSide: BorderSide.none,
							borderRadius: BorderRadius.circular(radius)
						),
						prefixIcon: const Icon(Icons.search, color: CoffeeShopColors.whiteColor, weight: 0.5, size: 18,),
						hintText: TranslatableText.text(TranslatableTextKey.SEARCH_COFFEE),
						hintStyle: GoogleFonts.sora(
							color: CoffeeShopColors.grayColor,
							fontWeight: FontWeight.w300,
							fontSize: 12
						)
					),
					autocorrect: true,
					style: GoogleFonts.sora(
						color: CoffeeShopColors.whiteColor,
						fontSize: 12
					),
				),
			),
		);
  }
}
