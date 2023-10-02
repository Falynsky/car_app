import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_details/data/mappers/owner_model_mapper.dart';
import 'package:cars_app/features/car_details/data/providers/owner_provider.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/domain/repositories/owner_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(as: OwnerRepository)
class RemoteOwnersRepository implements OwnerRepository {
  final OwnerProvider ownerProvider;
  final OwnerModelMapper mapper;

  RemoteOwnersRepository({
    required this.ownerProvider,
    required this.mapper,
  });

  @override
  Future<Either<Failure, OwnerModel>> getOwner(String ownerId) async {
    try {
      // final Response<List<OwnerDTO>> response = await ownerProvider.getOwners();
      // final List<OwnerDTO> body = response.body ?? <OwnerDTO>[];
      // final List<OwnerModel> list = body.map(mapper.toModel).toList();
      // final OwnerModel owner = list.firstWhere((OwnerModel element) => element.id == ownerId);
      return Right<Failure, OwnerModel>(
        OwnerModel(id: ownerId, firstName: 'Jan', lastName: 'Kowalski', sex: 'M', birthDate: '1990-01-01'),
      );
    } on Exception {
      return const Left<Failure, OwnerModel>(ServerFailure('Nie znalezionio właściciela'));
    }
  }
}
