import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/respositories/new_car_owner_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.dev, Environment.prod])
class GetNewCarOwnersUseCase extends UseCase<List<NewCarOwnerModel>, NoParams> {
  GetNewCarOwnersUseCase(this.newCarOwnerRepository);

  final NewCarOwnerRepository newCarOwnerRepository;

  @override
  Future<Either<Failure, List<NewCarOwnerModel>>> call(NoParams params) {
    return newCarOwnerRepository.getOwners();
  }
}
