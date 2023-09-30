import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/repositories/cars_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injecteo/injecteo.dart';
import 'package:mocktail/mocktail.dart';

@LazySingleton(env: <String>[Environment.dev])
class GetAllCarsUseCase implements UseCase<List<CarModel>, NoParams> {
  final CarsRepository repository;

  GetAllCarsUseCase(this.repository);

  @override
  Future<Either<Failure, List<CarModel>>> call(NoParams params) async {
    return repository.getAllCars();
  }
}

@LazySingleton(as: GetAllCarsUseCase, env: <String>[Environment.test])
class GetAllCarsUseCaseMock extends Mock implements GetAllCarsUseCase {}
