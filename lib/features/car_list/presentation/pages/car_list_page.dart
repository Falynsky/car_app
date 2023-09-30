import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_cubit.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_state.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list.dart';
import 'package:cars_app/features/car_list/presentation/widgets/loading_spinner.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CarListCubit carListCubit = getIt<CarListCubit>();
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.language_rounded),
            iconSize: 30, // Set the icon for the action widget
            onPressed: () {
              context.setLocale(
                context.locale == const Locale('pl') ? const Locale('en') : const Locale('pl'),
              );
            },
          ),
        ],
        title: const Text(LocaleKeys.car_list_title).tr(),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            // Top half
            BlocBuilder<CarListCubit, CarListState>(
              bloc: carListCubit..initCarList(),
              builder: (BuildContext context, CarListState state) {
                return state.maybeWhen(
                  orElse: () => const LoadingSpinner(),
                  success: (List<CarModel> cars) => CarList(cars: cars),
                );
              },
            ),
            // Bottom half
          ],
        ),
      ),
    );
  }
}
