import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/widgets/loading_spinner.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_cubit.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_state.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_detail_info_frame.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_detail_label.dart';
import 'package:cars_app/features/car_details/presentation/widgets/car_localization_box.dart';
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
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop(context.locale);
            },
          ),
          actions: <Widget>[
            IconButton(
              color: Colors.black,
              icon: const Icon(Icons.language_rounded),
              iconSize: 30,
              // Set the icon for the action widget
              onPressed: () {
                context.setLocale(
                  context.locale == const Locale('pl') ? const Locale('en') : const Locale('pl'),
                );
              },
            ),
          ],
          title: const Text(LocaleKeys.car_details_title).tr(),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            child: Column(
              children: <Widget>[
                BlocBuilder<CarDetailCubit, CarDetailsState>(
                  bloc: carListCubit..initCarDetail(car),
                  builder: (BuildContext context, CarDetailsState state) {
                    return state.maybeWhen(
                      orElse: () => const Center(child: Text('other')),
                      loading: () => const LoadingSpinner(),
                      success: (OwnerModel owner) => Container(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const CarDetailLabel(label: LocaleKeys.car_localization),
                                CarLocalizationBox(
                                  lat: car.lat,
                                  lng: car.lng,
                                ),
                                CarDetailInfoFrame(
                                  car: car,
                                  owner: owner,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
