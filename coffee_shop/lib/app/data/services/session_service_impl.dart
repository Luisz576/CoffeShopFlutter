import 'package:coffee_shop/app/interactor/entities/session_entity.dart';
import 'package:coffee_shop/app/interactor/entities/user_entity.dart';
import 'package:coffee_shop/app/interactor/exceptions/session_exception.dart';
import 'package:coffee_shop/app/interactor/services/session_service.dart';
import 'package:either_dart/either.dart';

class SessionServiceImpl implements SessionService {
	@override
  Future<Either<SessionException, SessionEntity>> login() async {
    return Right(
			SessionEntity(
				UserEntity(
					username: "Luisz576",
					city: "São Paulo",
					state: "SP",
				),
				""
			)
		);
  }
}
