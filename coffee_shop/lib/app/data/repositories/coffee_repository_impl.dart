import 'package:coffee_shop/app/interactor/entities/coffee_entity.dart';
import 'package:coffee_shop/app/interactor/exceptions/coffee_exception.dart';
import 'package:coffee_shop/app/interactor/repositories/coffee_repository.dart';
import 'package:either_dart/either.dart';

class CoffeeRepositoryImpl implements CoffeeRepository {
  @override
  Future<Either<CoffeeException, List<CoffeeEntity>>> fetchAll() async {
    return Right([
			CoffeeEntity(
				id: 1,
				name: 'Caffe Mocha',
				description: 'Deep Foam',
				category: CoffeeCategory.machiato,
				imageAsset: 'assets/images/caffe_mocha.png',
				score: 4.8,
				avaliations: 200,
				price: 4.53,
			)
		]);
  }
}
