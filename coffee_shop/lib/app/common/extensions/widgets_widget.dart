import 'package:flutter/material.dart';

extension WidgetsWidget on Widget{
	Widget padding(EdgeInsets padding){
		return Padding(
			padding: padding,
			child: this,
		);
	}

	Widget center(){
		return Center(
			child: this,
		);
	}

	Widget align({Alignment alignment = Alignment.center}){
		return Align(
			alignment: alignment,
			child: this,
		);
	}
}
