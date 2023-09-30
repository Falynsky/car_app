import 'package:cars_app/features/car_list/domain/entities/car_entity.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_cubit.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_state.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list_card.dart';
import 'package:cars_app/features/car_list/presentation/widgets/loading_spinner.dart';
import 'package:cars_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CarListCubit>(
      create: (_) => getIt<CarListCubit>()..initCarList(),
      child: Container(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            // Top half
            BlocBuilder<CarListCubit, CarListState>(
              builder: (BuildContext context, CarListState state) {
                if (state.isLoading) {
                  return const LoadingSpinner();
                }
                return Expanded(
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: state.cars.length,
                    itemBuilder: (BuildContext context, int index) {
                      final List<CarEntity> cars = state.cars;
                      final CarEntity car = cars[index];
                      return Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                        child: Container(
                          child: CarListCard(
                            brand: car.brand,
                            model: car.model,
                            color: car.color,
                            registration: car.registration,
                          ),
                        ),
                      );
                    },
                  ),
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
