import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_list/data/mappers/car_model_mapper.dart';
import 'package:cars_app/features/car_list/data/providers/car_list_provider.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/repositories/cars_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(as: CarsRepository)
class RemoteCarsRepository implements CarsRepository {
  final CarListProvider carListProvider;
  final CarModelMapper mapper;

  RemoteCarsRepository({
    required this.carListProvider,
    required this.mapper,
  });

  @override
  Future<Either<Failure, List<CarModel>>> getAllCars() async {
    try {
      // final Response<List<CarDTO>> response = await carListProvider.getCars();
      // final List<CarDTO> body = response.body ?? <CarDTO>[];
      // final List<CarModel> list = body.map(mapper.toModel).toList();
      return const Right<Failure, List<CarModel>>([
        CarModel(
          id: '1',
          brand: 'Ford',
          model: 'Focus',
          year: '2011-01-01T00:00:00.000Z',
          registration: 'SD97XXXX',
          color: '#0c226b',
          ownerId: '1',
          lat: 50.329095,
          lng: 19.226502,
        ),
        CarModel(
          id: '2',
          brand: 'Kia',
          model: 'CEED',
          year: '2023-01-01T00:00:00.000Z',
          registration: 'SD0429L',
          color: '#e04102',
          ownerId: '2',
          lat: 50.329109,
          lng: 19.226600,
        )
      ]);
    } on Exception {
      return const Left<Failure, List<CarModel>>(ServerFailure('Błąd pobierania danych'));
    }
  }
}
