import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/domain/repositories/owner_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.dev, Environment.prod])
class GetOwnerUseCase implements UseCase<OwnerModel, Params> {
  final OwnerRepository repository;

  GetOwnerUseCase(this.repository);

  @override
  Future<Either<Failure, OwnerModel>> call(Params params) {
    return repository.getOwner(params.ownerId);
  }
}

class Params extends Equatable {
  final String ownerId;

  const Params({required this.ownerId});

  @override
  List<String> get props => <String>[ownerId];
}
