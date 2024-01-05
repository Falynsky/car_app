import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/widgets/loading_spinner.dart';
import 'package:cars_app/features/car_adding_view/presentation/pages/car_adding_page.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_cubit.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_state.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_list_frame.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CarListCubit carListCubit = getIt<CarListCubit>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
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
        title: const Text(LocaleKeys.car_list_title).tr(),
      ),
      body: BlocListener<CarListCubit, CarListState>(
        bloc: carListCubit,
        listener: _listener,
        child: Column(
          children: <Widget>[
            // Top half
            BlocBuilder<CarListCubit, CarListState>(
              bloc: carListCubit..fetchCars(),
              builder: _builder,
            ),
            // Bottom half
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context)
              .push(
            PageRouteBuilder<bool>(
              pageBuilder: (BuildContext context, _, __) => const CarAddingPage(),
            ),
          )
              .then((bool? reloadPage) {
            if (reloadPage != null && reloadPage) {
              carListCubit.fetchCars();
            }
          });
        },
        backgroundColor: Colors.amber,
        child: const Icon(Icons.add_rounded, size: 30),
      ),
    );
  }

  void _listener(BuildContext context, CarListState state) {
    state.whenOrNull(
      failure: (String message) => _showSnackBar(context, message),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          LocaleKeys.car_list_error,
          style: Theme.of(context).textTheme.bodyLarge,
        ).tr(args: <String>[message]),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 8,
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Widget _builder(BuildContext context, CarListState state) {
    return state.maybeWhen(
      orElse: CarListFrame.new,
      loading: () => const LoadingSpinner(),
      success: (List<CarModel> cars) => CarListFrame(cars: cars),
    );
  }
}
