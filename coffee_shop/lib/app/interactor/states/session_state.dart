import 'package:coffee_shop/app/interactor/entities/session_entity.dart';
import 'package:coffee_shop/app/interactor/exceptions/session_exception.dart';
import 'package:flutter/material.dart';

sealed class SessionState {
	final SessionException? exception;
	final SessionEntity? session;

	SessionState(this.session, this.exception);

	static unlogged({SessionException? exception}){
		return UnloggedSessionState(exception);
	}
	static logged(SessionEntity session){
		return LoggedSessionState(session);
	}
}

class UnloggedSessionState extends SessionState {
	UnloggedSessionState(SessionException? exception) : super(null, exception);
}

class LoggedSessionState extends SessionState{
	LoggedSessionState(SessionEntity session) : super(session, null);
}

final sessionState = ValueNotifier<SessionState>(SessionState.unlogged());
