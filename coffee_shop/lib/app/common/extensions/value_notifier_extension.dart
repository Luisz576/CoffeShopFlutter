import 'package:flutter/material.dart';

extension ValueNotifierSetter<T> on ValueNotifier<T>{
	setValue(T value){
		this.value = value;
	}
}
