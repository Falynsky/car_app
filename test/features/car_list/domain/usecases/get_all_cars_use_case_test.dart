import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_list/data/repositories/remote_cars_repository.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/usecases/get_all_cars_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injecteo/injecteo.dart' as di;
import 'package:mocktail/mocktail.dart';

void main() async {
  await configureDependencies(di.Environment.test);
  late final List<CarModel> cars;
  late final GetAllCarsUseCase usecase;
  late RemoteCarsRepository carsRepository;

  setUpAll(() async {
    cars = <CarModel>[
      const CarModel(
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
    ];
    carsRepository = getIt();
    usecase = GetAllCarsUseCase(carsRepository);
  });

  test('should get cars from the repository', () async {
    // given:
    when(() => carsRepository.getAllCars()).thenAnswer((_) async => Right<Failure, List<CarModel>>(cars));
    // when:
    final Either<Failure, List<CarModel>> result = await usecase(NoParams());
    // then:
    expect(result, Right<Failure, List<CarModel>>(cars));
    verify(() => carsRepository.getAllCars());
    verifyNoMoreInteractions(carsRepository);
  });
}
