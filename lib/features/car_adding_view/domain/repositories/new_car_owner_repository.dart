import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_owner_model.dart';
import 'package:dartz/dartz.dart';

abstract class NewCarOwnerRepository {
  Future<Either<Failure, List<NewCarOwnerModel>>> getOwners();
}
