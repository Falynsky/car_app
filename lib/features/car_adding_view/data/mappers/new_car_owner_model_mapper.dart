import 'package:cars_app/core/data/two_way_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_owner_dto.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_owner_model.dart';
import 'package:injecteo/injecteo.dart';

@inject
class NewCarOwnerModelMapper implements TwoWayMapper<NewCarOwnerModel, NewCarOwnerDTO> {
  @override
  NewCarOwnerModel toModel(NewCarOwnerDTO dto) {
    return NewCarOwnerModel(
      id: dto.id,
      firstName: dto.firstName,
      lastName: dto.lastName,
      birthDate: dto.birthDate,
      sex: dto.sex,
    );
  }

  @override
  NewCarOwnerDTO toDTO(NewCarOwnerModel value) {
    return NewCarOwnerDTO(
      id: value.id,
      firstName: value.firstName,
      lastName: value.lastName,
      birthDate: value.birthDate,
      sex: value.sex,
    );
  }
}