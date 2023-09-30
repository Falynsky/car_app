import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:dartz/dartz.dart';

abstract class CarsRepository {
  Future<Either<Failure, List<CarModel>>> getAllCars();
}
