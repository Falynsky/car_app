import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:dartz/dartz.dart';

abstract class OwnerRepository {
  Future<Either<Failure, OwnerModel>> getOwner(String ownerId);
}
