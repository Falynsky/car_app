//write tempalte to  CarListCubit unit test

import 'package:bloc_test/bloc_test.dart';
import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/usecases/get_all_cars.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_cubit.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injecteo/injecteo.dart';
import 'package:mocktail/mocktail.dart';

void main() async {
  await configureDependencies(Environment.test);

  late GetAllCarsUseCase getAllCarsUseCase;

  setUpAll(() async {
    getAllCarsUseCase = getIt();
    registerFallbackValue(NoParams());
  });

  blocTest<CarListCubit, CarListState>(
    'emits [] when nothing is added',
    setUp: () async {
      when(() => getAllCarsUseCase(any())).thenAnswer(
        (_) async => const Right(<CarModel>[
          CarModel(
            id: 'id',
            registration: 'registration',
            brand: 'brand',
            model: 'model',
            color: 'color',
          )
        ]),
      );
    },
    act: (CarListCubit cubit) async => cubit.initCarList(),
    build: getIt,
    expect: () => <CarListState>[
      const CarListState.loading(),
      const CarListState.success(
        cars: <CarModel>[
          CarModel(
            id: 'id',
            registration: 'registration',
            brand: 'brand',
            model: 'model',
            color: 'color',
          )
        ],
      ),
    ],
    verify: (CarListCubit cubit) async {
      verify(() => cubit.getAllCarsUseCase(any())).called(1);
    },
  );
}
