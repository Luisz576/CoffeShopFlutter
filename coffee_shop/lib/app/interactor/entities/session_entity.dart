import 'package:coffee_shop/app/interactor/entities/user_entity.dart';

class SessionEntity {
	UserEntity? user;
	String? token;

	SessionEntity(this.user, this.token);
}
