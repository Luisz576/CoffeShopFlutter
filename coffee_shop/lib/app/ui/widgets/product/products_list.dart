import 'package:coffee_shop/app/ui/widgets/product/products_filter.dart';
import 'package:coffee_shop/app/ui/widgets/product/product_list_view.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
			builder: (context, constraints) => SizedBox(
				width: MediaQuery.of(context).size.width - 40,
				height: constraints.biggest.height,
				child: Column(
					children: [
						ProductsFilter(),
						const SizedBox(height: 10,),
						Expanded(
							child: LayoutBuilder(
								builder: (context, constraints) => ProductsListView(
									height: constraints.biggest.height,
								),
							),
						)
					],
				),
			),
		);
  }
}
