import 'package:coffee_shop/app/ui/widgets/product/products_filter.dart';
import 'package:flutter/material.dart';

class ProductsList extends StatelessWidget {
  const ProductsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
			width: MediaQuery.of(context).size.width - 40,
			child: Column(
				children: [
					ProductsFilter(),
					const SizedBox(height: 10,),
					// TODO: ProductsListView()
				],
			),
		);
  }
}
