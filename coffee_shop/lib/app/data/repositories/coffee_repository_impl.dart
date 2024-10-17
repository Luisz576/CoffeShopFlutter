import 'package:coffee_shop/app/interactor/entities/coffee_entity.dart';
import 'package:coffee_shop/app/interactor/exceptions/coffee_exception.dart';
import 'package:coffee_shop/app/interactor/repositories/coffee_repository.dart';
import 'package:either_dart/src/either.dart';

class CoffeeRepositoryImpl implements CoffeeRepository {
  @override
  Future<Either<CoffeeException, List<CoffeeEntity>>> fetchAll() {
    // TODO: implement fetchAll
    throw UnimplementedError();
  }
}
