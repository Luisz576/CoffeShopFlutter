import 'package:coffee_shop/app/interactor/entities/coffee_entity.dart';
import 'package:coffee_shop/app/interactor/exceptions/coffee_exception.dart';
import 'package:either_dart/either.dart';

abstract class CoffeeRepository {
	Future<Either<CoffeeException, List<CoffeeEntity>>> fetchAll();
}
