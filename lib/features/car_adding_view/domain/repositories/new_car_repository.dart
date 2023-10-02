import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:dartz/dartz.dart';

abstract class NewCarRepository {
  Future<Either<Failure, NewCarModel>> addNewCar(NewCarModel car);
}
