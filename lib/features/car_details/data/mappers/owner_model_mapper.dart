import 'package:cars_app/core/data/two_way_mapper.dart';
import 'package:cars_app/features/car_details/data/dto/owner_dto.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:injecteo/injecteo.dart';

@inject
class OwnerModelMapper implements TwoWayMapper<OwnerModel, OwnerDTO> {
  @override
  OwnerModel toModel(OwnerDTO dto) {
    return OwnerModel(
      id: dto.id,
      firstName: dto.firstName,
      lastName: dto.lastName,
    );
  }

  @override
  OwnerDTO toDTO(OwnerModel value) {
    return OwnerDTO(
      id: value.id,
      firstName: value.firstName,
      lastName: value.lastName,
    );
  }
}
