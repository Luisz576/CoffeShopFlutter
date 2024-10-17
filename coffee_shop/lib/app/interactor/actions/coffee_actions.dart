import 'package:coffee_shop/app/common/extensions/value_notifier_extension.dart';
import 'package:coffee_shop/app/injector.dart';
import 'package:coffee_shop/app/interactor/repositories/coffee_repository.dart';
import 'package:coffee_shop/app/interactor/states/coffee_state.dart';

Future<void> fetchAll() async {
	coffeesState.setValue(CoffeeState.loading());

	final repository = injector.get<CoffeeRepository>();
	final result = await repository.fetchAll();

	result.fold((exception){
		coffeesState.setValue(CoffeeState.error(exception));
	}, (data){
		coffeesState.setValue(CoffeeState.done(data));
	});
}
