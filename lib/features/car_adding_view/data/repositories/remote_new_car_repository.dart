import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_adding_view/data/mappers/new_car_model_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/providers/new_car_provider.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:cars_app/features/car_adding_view/domain/repositories/new_car_repository.dart';
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
  Future<Either<Failure, NewCarModel>> addNewCar(NewCarModel car) async {
    try {
      // final Response<List<OwnerDTO>> response = await ownerProvider.getOwners();
      // final List<OwnerDTO> body = response.body ?? <OwnerDTO>[];
      // final List<OwnerModel> list = body.map(mapper.toModel).toList();
      // final OwnerModel owner = list.firstWhere((OwnerModel element) => element.id == ownerId);
      return Right<Failure, NewCarModel>(car);
    } on Exception {
      return const Left<Failure, NewCarModel>(ServerFailure('Nie znalezionio właściciela'));
    }
  }
}
