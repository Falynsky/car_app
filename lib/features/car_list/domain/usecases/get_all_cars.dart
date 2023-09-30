import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_list/domain/entities/car_entity.dart';
import 'package:cars_app/features/car_list/domain/repositories/cars_repository.dart';
import 'package:dartz/dartz.dart';

class GetAllCarsUseCase implements UseCase<List<CarEntity>, NoParams> {
  final CarsRepository repository;

  GetAllCarsUseCase(this.repository);

  @override
  Future<Either<Failure, List<CarEntity>>> call(NoParams params) async {
    return repository.getAllCars();
  }
}
