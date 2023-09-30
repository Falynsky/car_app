import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_list/data/datasources/car_list_service.dart';
import 'package:cars_app/features/car_list/data/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/entities/car_entity.dart';
import 'package:cars_app/features/car_list/domain/repositiories/cars_repository.dart';
import 'package:chopper/src/response.dart';
import 'package:dartz/dartz.dart';

typedef Future<Response<List<CarModel>>> _ConcreteOrRandomChooser();

class CarsRepositoryImpl implements CarsRepository {
  final CarListService carListService;

  CarsRepositoryImpl({
    required this.carListService,
  });

  @override
  Future<Either<Failure, List<CarEntity>>> getAllCars() async {
    return await _getAllCars(() {
      return carListService.getCars();
    });
  }

  Future<Either<Failure, List<CarEntity>>> _getAllCars(
    _ConcreteOrRandomChooser getAllCars,
  ) async {
    try {
      final cars = await getAllCars;
      final List<CarEntity> body = cars.body ?? <CarEntity>[];
      return Right<Failure, List<CarEntity>>(body);
    } on Exception {
      return Left<Failure, List<CarEntity>>(ServerFailure());
    }
  }
}
