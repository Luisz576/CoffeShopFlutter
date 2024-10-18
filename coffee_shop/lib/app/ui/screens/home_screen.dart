import 'package:coffee_shop/app/interactor/actions/session_actions.dart';
import 'package:coffee_shop/app/interactor/states/session_state.dart';
import 'package:coffee_shop/app/translatable_text.dart';
import 'package:coffee_shop/app/ui/coffee_shop_colors.dart';
import 'package:coffee_shop/app/ui/widgets/filter_field.dart';
import 'package:coffee_shop/app/ui/widgets/search_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
	@override
  void initState() {
    super.initState();
		if(sessionState.value.session == null){
			loginSession();
		}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
			backgroundColor: CoffeeShopColors.whiteColor,
			body: SafeArea(
				child: Column(
					children: [
						Container(
							width: double.infinity,
							decoration: const BoxDecoration(
								color: CoffeeShopColors.blackColor
							),
							padding: const EdgeInsets.fromLTRB(20, 16, 20, 66),
							child: Column(
								crossAxisAlignment: CrossAxisAlignment.start,
								children: [
									Text(TranslatableText.text(TranslatableTextKey.LOCATION),
										style: GoogleFonts.nunito(
											color: CoffeeShopColors.grayColor,
											fontSize: 10,
										),
									),
									const SizedBox(height: 4,),
									Row(
										children: [
											ListenableBuilder(
												listenable: sessionState,
												builder: (context, child){
													final session = sessionState.value.session;
													return Text(session != null && session.user != null ? "${session.user!.city}, ${session.user!.state}" : "????",
														style: GoogleFonts.nunito(
															color: CoffeeShopColors.whiteColor,
															fontSize: 12,
															fontWeight: FontWeight.w700
														),
													);
												},
											),
											const SizedBox(width: 5,),
											const Padding(
												padding: EdgeInsets.only(bottom: 5),
												child: RotatedBox(
													quarterTurns: 135,
													child: Icon(Icons.arrow_back_ios,
														color: CoffeeShopColors.whiteColor,
														size: 14,
														weight: 0.5,
													),
												),
											)
										],
									),
									const SizedBox(height: 16,),
									const SizedBox(
										height: 40,
										child: Row(
											mainAxisAlignment: MainAxisAlignment.spaceBetween,
											children: [
												SearchField(
													flex: 5,
													radius: 10,
												),
												SizedBox(width: 12,),
												FilterField(
													height: 40,
													width: 40,
													radius: 10,
												)
											],
										),
									)
								],
							),
						)
					],
				),
			),
		);
  }
}
