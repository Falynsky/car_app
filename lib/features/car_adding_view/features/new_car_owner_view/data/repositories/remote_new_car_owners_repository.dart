import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/data/dto/new_car_owner_dto.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/data/mappers/new_car_owner_model_mapper.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/data/providers/new_car_owner_provider.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/respositories/new_car_owner_repository.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(as: NewCarOwnerRepository)
class RemoteNewCarOwnersRepository implements NewCarOwnerRepository {
  final NewCarOwnerProvider ownerProvider;
  final NewCarOwnerModelMapper mapper;

  RemoteNewCarOwnersRepository({
    required this.ownerProvider,
    required this.mapper,
  });

  @override
  Future<Either<Failure, List<NewCarOwnerModel>>> getOwners() async {
    try {
      final Response<List<NewCarOwnerDTO>> response = await ownerProvider.getOwners();
      final List<NewCarOwnerDTO> body = response.body ?? <NewCarOwnerDTO>[];
      final List<NewCarOwnerModel> owners = body.map(mapper.toModel).toList();
      return Right<Failure, List<NewCarOwnerModel>>(owners);
    } on Exception {
      return Left<Failure, List<NewCarOwnerModel>>(ServerFailure(LocaleKeys.owner_not_found.tr()));
    }
  }
}
