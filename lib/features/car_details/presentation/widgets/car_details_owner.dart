import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_cubit.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_state.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarDetailsOwner extends StatelessWidget {
  const CarDetailsOwner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final CarDetailCubit carListCubit = getIt<CarDetailCubit>();
    return BlocBuilder<CarDetailCubit, CarDetailsState>(
      bloc: carListCubit,
      builder: (BuildContext context, CarDetailsState state) {
        return state.maybeWhen(
          success: (OwnerModel owner) {
            return const Text(LocaleKeys.car_owner).tr(
              namedArgs: <String, String>{
                'firstName': owner.firstName,
                'lastName': owner.lastName,
              },
            );
          },
          orElse: () => const Text(
            LocaleKeys.car_owner_unavailable,
            style: TextStyle(color: Colors.red),
          ).tr(),
        );
      },
    );
  }
}
