import 'package:coffee_shop/app/interactor/entities/session_entity.dart';
import 'package:coffee_shop/app/interactor/exceptions/session_exception.dart';
import 'package:either_dart/either.dart';

abstract class SessionService {
	Future<Either<SessionException, SessionEntity>> login();
}
