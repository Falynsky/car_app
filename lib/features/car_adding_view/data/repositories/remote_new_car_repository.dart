import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_dto.dart';
import 'package:cars_app/features/car_adding_view/data/mappers/new_car_model_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/providers/new_car_provider.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:cars_app/features/car_adding_view/domain/repositories/new_car_repository.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(as: NewCarRepository)
class RemoteNewCarRepository implements NewCarRepository {
  final NewCarProvider newCarProvider;
  final NewCarModelMapper mapper;

  RemoteNewCarRepository({
    required this.newCarProvider,
    required this.mapper,
  });

  @override
  Future<Either<Failure, bool>> addNewCar(NewCarModel car) async {
    try {
      final NewCarDTO dto = mapper.toDTO(car);
      final Map<String, Object?> json = dto.toJson()..remove('_id');
      final Response<NewCarDTO> response = await newCarProvider.addNewCar(json);
      return Right<Failure, bool>(response.isSuccessful);
    } on Exception {
      return const Left<Failure, bool>(ServerFailure('Nie znalezionio właściciela'));
    }
  }
}
