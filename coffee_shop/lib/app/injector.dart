import 'package:auto_injector/auto_injector.dart';
import 'package:coffee_shop/app/data/repositories/coffee_repository_impl.dart';
import 'package:coffee_shop/app/data/services/session_service_impl.dart';
import 'package:coffee_shop/app/interactor/repositories/coffee_repository.dart';
import 'package:coffee_shop/app/interactor/services/session_service.dart';

final injector = AutoInjector();

void setupInjector(){
	injector.addInstance<CoffeeRepository>(CoffeeRepositoryImpl());

	injector.addInstance<SessionService>(SessionServiceImpl());
}
