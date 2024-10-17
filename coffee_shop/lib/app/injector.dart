import 'package:auto_injector/auto_injector.dart';
import 'package:coffee_shop/app/data/repositories/coffee_repository_impl.dart';
import 'package:coffee_shop/app/interactor/repositories/coffee_repository.dart';

final injector = AutoInjector();

void setupInjector(){
	injector.addInstance<CoffeeRepository>(CoffeeRepositoryImpl());
}
