import 'package:coffee_shop/app/common/extensions/value_notifier_extension.dart';
import 'package:coffee_shop/app/injector.dart';
import 'package:coffee_shop/app/interactor/entities/session_entity.dart';
import 'package:coffee_shop/app/interactor/services/session_service.dart';
import 'package:coffee_shop/app/interactor/states/session_state.dart';

SessionEntity? getSession(){
	return sessionState.value.session;
}

bool isLogged(){
	return sessionState.value.session != null;
}

Future<void> loginSession() async {
	final service = injector.get<SessionService>();
	final result = await service.login();
	result.fold((exception) {
		sessionState.setValue(SessionState.unlogged(
			exception: exception
		));
	}, (session){
		sessionState.setValue(SessionState.logged(session));
	});
}
