import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_list/data/models/car_model.dart';
import 'package:cars_app/features/car_list/data/providers/car_list_service.dart';
import 'package:cars_app/features/car_list/domain/entities/car_entity.dart';
import 'package:cars_app/features/car_list/domain/repositories/cars_repository.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';

typedef Future<Response<List<CarModel>>> _CarModelsChooser();

class CarsRepositoryImpl implements CarsRepository {
  final CarListService carListService;

  CarsRepositoryImpl({
    required this.carListService,
  });

  @override
  Future<Either<Failure, List<CarEntity>>> getAllCars() async {
    return _getTrivia(carListService.getCars);
  }

  Future<Either<Failure, List<CarEntity>>> _getTrivia(
    _CarModelsChooser getCarModels,
  ) async {
    try {
      final Response<List<CarModel>> response = await getCarModels();
      final List<CarModel> body = response.body ?? <CarModel>[];
      return Right<Failure, List<CarEntity>>(body);
    } on Exception {
      return Left<Failure, List<CarEntity>>(ServerFailure());
    }
  }
}
