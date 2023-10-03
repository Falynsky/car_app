import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_cubit.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_state.dart';
import 'package:cars_app/features/car_adding_view/presentation/widgets/car_form/frames/car_adding_form_frame.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarAddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future<bool>.value(false),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop(true);
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.language_rounded),
              iconSize: 30,
              onPressed: () {
                context.setLocale(
                  context.locale == const Locale('pl') ? const Locale('en') : const Locale('pl'),
                );
              },
            ),
          ],
          title: const Text(LocaleKeys.new_car_brand_title).tr(),
        ),
        body: BlocListener<CarAddingCubit, CarAddingState>(
          bloc: getIt<CarAddingCubit>(),
          listener: (BuildContext context, CarAddingState state) {
            state.maybeWhen(
              orElse: () => null,
              success: () => Navigator.of(context).pop(true),
            );
          },
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Container(
                child: Column(
                  children: <Widget>[
                    CarAddingFormFrame(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
