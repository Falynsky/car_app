import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_cubit.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_state.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetailsPage extends StatelessWidget {
  final CarModel car;

  const CarDetailsPage({
    required this.car,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CarDetailCubit carListCubit = getIt<CarDetailCubit>()..initCarDetail(car);
    return WillPopScope(
      onWillPop: () => Future<bool>.value(false),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: IconButton(
            padding: const EdgeInsets.only(left: 10),
            icon: const Icon(Icons.arrow_back_rounded),
            iconSize: 30, // Set the icon for the action widget
            onPressed: () {
              Navigator.of(context).pop(context.locale);
            },
          ),
          actions: <Widget>[
            IconButton(
              padding: const EdgeInsets.only(right: 10),
              icon: const Icon(Icons.language_rounded),
              iconSize: 30, // Set the icon for the action widget
              onPressed: () {
                context.setLocale(
                  context.locale == const Locale('pl') ? const Locale('en') : const Locale('pl'),
                );
              },
            ),
          ],
          title: const Text(LocaleKeys.car_details_title).tr(),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              BlocBuilder<CarDetailCubit, CarDetailsState>(
                bloc: carListCubit..initCarDetail(car),
                builder: (BuildContext context, CarDetailsState state) {
                  return state.maybeWhen(
                    orElse: () => const Center(child: Text('other')),
                    loading: () => const Center(child: CircularProgressIndicator()),
                    success: (OwnerModel owner) => Container(
                      child: Column(children: <Widget>[
                        Text(car.brand),
                        Text(car.model),
                        Text(car.registration),
                        Text(car.color),
                        Text('${owner.firstName} ${owner.lastName}'),
                        Text(car.lat.toString()),
                        Text(car.lng.toString()),
                      ]),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
