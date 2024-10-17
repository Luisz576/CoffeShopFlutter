enum CoffeeCategory {
	machiato,
	latte,
}

class CoffeeEntity{
	final int id;
	final String name, description, imageAsset;
	final CoffeeCategory category;
	final double score, price;
	final int avaliations;

	CoffeeEntity({
		required this.id,
		required this.name,
		required this.description,
		required this.category,
		required this.imageAsset,
		required this.score,
		required this.avaliations,
		required this.price,
	});
}
