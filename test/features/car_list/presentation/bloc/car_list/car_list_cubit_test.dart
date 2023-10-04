import 'package:bloc_test/bloc_test.dart';
import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/usecases/get_all_cars_use_case.dart';
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
    'emits one car when initCarList',
    setUp: () async {
      when(() => getAllCarsUseCase(any())).thenAnswer(
        (_) async => const Right<Failure, List<CarModel>>(<CarModel>[
          CarModel(
            id: 'id',
            registration: 'registration',
            brand: 'brand',
            model: 'model',
            color: 'color',
            year: '2005-01-01T00:00:00.000Z',
            ownerId: 'ownerId',
            lat: 0,
            lng: 0,
          ),
        ]),
      );
    },
    act: (CarListCubit cubit) async => cubit.fetchCars(),
    build: () => CarListCubit(getAllCarsUseCase: getAllCarsUseCase),
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
            year: '2005-01-01T00:00:00.000Z',
            ownerId: 'ownerId',
            lat: 0,
            lng: 0,
          ),
        ],
      ),
    ],
    verify: (CarListCubit cubit) async {
      verify(() => cubit.getAllCarsUseCase(any())).called(1);
    },
  );

  blocTest<CarListCubit, CarListState>(
    'emits failure',
    setUp: () async {
      when(() => getAllCarsUseCase(any())).thenAnswer(
        (_) async => const Left<Failure, List<CarModel>>(ServerFailure('error')),
      );
    },
    act: (CarListCubit cubit) async => cubit.fetchCars(),
    build: () => CarListCubit(getAllCarsUseCase: getAllCarsUseCase),
    expect: () => <CarListState>[
      const CarListState.loading(),
      const CarListState.failure(message: 'error'),
    ],
    verify: (CarListCubit cubit) async {
      verify(() => cubit.getAllCarsUseCase(any())).called(1);
    },
  );
}
