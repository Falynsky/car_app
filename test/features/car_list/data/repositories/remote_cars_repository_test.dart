import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_list/data/dto/car_dto.dart';
import 'package:cars_app/features/car_list/data/mappers/car_model_mapper.dart';
import 'package:cars_app/features/car_list/data/providers/car_list_provider.dart';
import 'package:cars_app/features/car_list/data/repositories/remote_cars_repository.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:injecteo/injecteo.dart' as di;
import 'package:mocktail/mocktail.dart';

void main() async {
  await configureDependencies(di.Environment.test);
  late final RemoteCarsRepository carsRepository;
  late final CarModelMapper mapper;
  late final List<CarDTO> cars;
  late final List<CarModel> carModels;
  late final CarListProvider carListProvider;
  setUpAll(() async {
    carListProvider = getIt();
    mapper = CarModelMapper();
    registerFallbackValue(
      const CarDTO(
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
    );
    cars = <CarDTO>[
      const CarDTO(
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

    carModels = <CarModel>[
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
    carsRepository = RemoteCarsRepository(carListProvider: carListProvider, mapper: mapper);
  });

  test('should return CarModels from CarDTOs', () async {
    // given:
    when(() => carListProvider.getCars())
        .thenAnswer((_) async => Response<List<CarDTO>>(http.Response('body', 200), cars));
    // when:
    final Either<Failure, List<CarModel>> result = await carsRepository.getAllCars();
    // then:
    verify(() => carListProvider.getCars());
    expect(result.isRight(), true);
    final List<CarModel> fetchedCars = result.getOrElse(() => <CarModel>[]);
    expect(fetchedCars.length, carModels.length);
    expect(fetchedCars.first, carModels.first);
  });
}
