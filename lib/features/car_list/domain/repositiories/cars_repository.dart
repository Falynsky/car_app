import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_list/domain/entities/car_entity.dart';
import 'package:dartz/dartz.dart';

abstract class CarsRepository {
  Future<Either<Failure, List<CarEntity>>> getAllCars();
}
