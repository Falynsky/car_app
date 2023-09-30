import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_list/data/dto/car_dto.dart';
import 'package:cars_app/features/car_list/data/mappers/car_model_mapper.dart';
import 'package:cars_app/features/car_list/data/providers/car_list_provider.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/repositories/cars_repository.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';

class RemoteCarsRepository implements CarsRepository {
  final CarListProvider carListProvider;

  RemoteCarsRepository({required this.carListProvider});

  @override
  Future<Either<Failure, List<CarModel>>> getAllCars() async {
    try {
      final Response<List<CarDTO>> response = await carListProvider.getCars();
      final List<CarDTO> body = response.body ?? <CarDTO>[];
      final CarModelMapper mapper = CarModelMapper();
      final List<CarModel> list = body.map(mapper.toModel).toList();
      return Right<Failure, List<CarModel>>(list);
    } on Exception {
      return Left<Failure, List<CarModel>>(ServerFailure());
    }
  }
}
