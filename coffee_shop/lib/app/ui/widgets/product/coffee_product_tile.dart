import 'package:coffee_shop/app/interactor/entities/coffee_entity.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeProductTile extends StatelessWidget {
	final CoffeeEntity data;
  const CoffeeProductTile({
		required this.data,
		super.key
	});

  @override
  Widget build(BuildContext context) {
    return Card(
			margin: EdgeInsets.zero,
			child: Padding(
				padding: const EdgeInsets.all(5.0),
				child: Column(
					crossAxisAlignment: CrossAxisAlignment.start,
					children: [
						Stack(
							children: [
								Container(
									width: double.infinity,
									height: 110,
									decoration: BoxDecoration(
										borderRadius: const BorderRadius.all(Radius.circular(10)),
										image: DecorationImage(
											image: AssetImage(data.imageAsset),
											fit: BoxFit.cover
										)
									),
								),
								Align(
									alignment: Alignment.topRight,
									child: Padding(
										padding: const EdgeInsets.only(top: 5, right: 10),
										child: Row(
											mainAxisSize: MainAxisSize.min,
											crossAxisAlignment: CrossAxisAlignment.center,
											children: [
												const Icon(Icons.star, color: Colors.yellow, size: 14,),
												const SizedBox(width: 4,),
												Text(data.score.toStringAsFixed(1),
													style: GoogleFonts.sora(
														color: CoffeeShopColors.whiteColor,
														fontSize: 10
													),
												)
											],
										),
									),
								)
							],
						),
						const SizedBox(height: 5,),
						Text(data.name,
							style: GoogleFonts.sora(
								color: CoffeeShopColors.blackColor,
								fontWeight: FontWeight.w700,
								fontSize: 16
							),
						),
						Text(data.description,
							style: GoogleFonts.sora(
								color: CoffeeShopColors.blackColor,
								fontSize: 12
							),
						),
						const SizedBox(height: 5,),
						Row(
							mainAxisAlignment: MainAxisAlignment.spaceBetween,
							children: [
								Text("\$${data.price.toStringAsFixed(2)}",
									style: GoogleFonts.sora(
										color: CoffeeShopColors.blackColor,
										fontWeight: FontWeight.bold,
										fontSize: 16
									),
								),
								InkWell(
									onTap: (){},
									child: const Card(
										color: CoffeeShopColors.primaryColor,
										child: Padding(
											padding: EdgeInsets.all(5),
											child: Icon(Icons.add, color: CoffeeShopColors.whiteColor, weight: 0.5,),
										),
									),
								)
							],
						)
					],
				),
			),
		);
  }
}
