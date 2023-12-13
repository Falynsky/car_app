import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_details/data/dto/owner_dto.dart';
import 'package:cars_app/features/car_details/data/mappers/owner_model_mapper.dart';
import 'package:cars_app/features/car_details/data/providers/owner_provider.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/domain/repositories/owner_repository.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(as: OwnerRepository)
class RemoteOwnersRepository implements OwnerRepository {
  RemoteOwnersRepository({
    required this.ownerProvider,
    required this.mapper,
  });

  final OwnerProvider ownerProvider;
  final OwnerModelMapper mapper;

  @override
  Future<Either<Failure, OwnerModel>> getOwner(String ownerId) async {
    try {
      final Response<List<OwnerDTO>> response = await ownerProvider.getOwners();
      final List<OwnerDTO> body = response.body ?? <OwnerDTO>[];
      final List<OwnerModel> list = body.map(mapper.toModel).toList();
      OwnerModel? owner;
      for (final OwnerModel element in list) {
        if (element.id == ownerId) {
          owner = element;
        }
      }
      if (owner == null) {
        return Left<Failure, OwnerModel>(ServerFailure(LocaleKeys.owner_not_found.tr()));
      }
      return Right<Failure, OwnerModel>(owner);
    } on Exception {
      return Left<Failure, OwnerModel>(ServerFailure(LocaleKeys.owner_not_found.tr()));
    }
  }
}
