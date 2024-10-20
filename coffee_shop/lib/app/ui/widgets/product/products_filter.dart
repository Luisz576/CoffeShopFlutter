import 'package:coffee_shop/app/common/extensions/widgets_widget.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsFilter extends StatelessWidget {
  ProductsFilter({super.key});

	final filterItems = ["All Coffee", "Machiato", "Latte", "Americano"];
	final selected = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
			height: 30,
			child: ListView.builder(
				scrollDirection: Axis.horizontal,
				physics: const BouncingScrollPhysics(),
				itemCount: filterItems.length,
				itemBuilder: (context, index) => InkWell(
					onTap: (){},
					child: Card(
						shadowColor: Colors.transparent,
						margin: EdgeInsets.zero,
						color: selected.value == index ? CoffeeShopColors.primaryColor : Colors.transparent,
						child: Text(filterItems[index],
							style: GoogleFonts.sora(
								color: selected.value == index ? CoffeeShopColors.whiteColor : CoffeeShopColors.blackColor,
								fontSize: 10
							),
						).align().padding(const EdgeInsets.symmetric(horizontal: 10)),
					),
				).padding(EdgeInsets.only(left: index == 0 ? 0 : 10)),
			),
		);
  }
}
