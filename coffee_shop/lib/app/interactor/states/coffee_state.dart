import 'package:coffee_shop/app/interactor/entities/coffee_entity.dart';
import 'package:coffee_shop/app/interactor/exceptions/coffee_exception.dart';
import 'package:flutter/material.dart';

sealed class CoffeeState{
	final bool isLoading;
	final CoffeeException? exception;
	final List<CoffeeEntity>? data;

	CoffeeState({
		this.isLoading = false,
		this.exception,
		this.data
	});

	static empty(){
		return EmptyCoffeeState();
	}
	static loading(){
		return LoadingCoffeeState();
	}
	static error(CoffeeException exception){
		return ErrorCoffeeState(exception);
	}
	static done(List<CoffeeEntity> data){
		return DoneCoffeeState(data);
	}
}

class EmptyCoffeeState extends CoffeeState {}
class LoadingCoffeeState extends CoffeeState {
	LoadingCoffeeState() : super(isLoading: true);
}
class ErrorCoffeeState extends CoffeeState {
	ErrorCoffeeState(CoffeeException exception) : super(exception: exception);
}
class DoneCoffeeState extends CoffeeState {
	DoneCoffeeState(List<CoffeeEntity> data) : super(data: data);
}

final coffeesState = ValueNotifier<CoffeeState>(CoffeeState.empty());
