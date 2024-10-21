import 'package:coffee_shop/app/common/extensions/widgets_widget.dart';
import 'package:coffee_shop/app/interactor/states/coffee_state.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:coffee_shop/app/ui/widgets/product/coffee_product_tile.dart';
import 'package:flutter/material.dart';

class ProductsListView extends StatelessWidget {
	final double height;
  const ProductsListView({required this.height, super.key});

  @override
  Widget build(BuildContext context) {
		// coffeesState
    return ListenableBuilder(
			listenable: coffeesState,
			builder: (context, child) {
				return switch(coffeesState.value){
					LoadingCoffeeState _ => const Center(
						child: CircularProgressIndicator(
							color: CoffeeShopColors.primaryColor,
						),
					),
					EmptyCoffeeState _ => const Text("No products loaded!"),
					ErrorCoffeeState _ => const Text("Exception while loading products!"),
					DoneCoffeeState state => SizedBox(
						height: height,
						child: GridView.count(
							childAspectRatio: 0.5,
							scrollDirection: Axis.vertical,
							crossAxisCount: 2,
							mainAxisSpacing: 10,
							crossAxisSpacing: 20,
							shrinkWrap: true,
							physics: const AlwaysScrollableScrollPhysics(),
							children: state.data!.map(
								(value) => CoffeeProductTile(
									data: value
								)
							).toList(),
						),
					),
				};
			},
		).padding(const EdgeInsets.only(top: 10));
  }
}
