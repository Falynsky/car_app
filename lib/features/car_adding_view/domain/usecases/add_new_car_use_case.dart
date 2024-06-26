import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:cars_app/features/car_adding_view/domain/repositories/new_car_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.dev, Environment.prod])
class AddNewCarUseCase implements UseCase<bool, Params> {
  AddNewCarUseCase(this.newCarRepository);

  final NewCarRepository newCarRepository;

  @override
  Future<Either<Failure, bool>> call(Params params) async {
    return newCarRepository.addNewCar(params.newCarModel);
  }
}

class Params extends Equatable {
  const Params({required this.newCarModel});
  
  final NewCarModel newCarModel;

  @override
  List<NewCarModel> get props => <NewCarModel>[newCarModel];
}
