import 'package:cars_app/core/data/two_way_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_dto.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:injecteo/injecteo.dart';

@inject
class NewCarModelMapper implements TwoWayMapper<NewCarModel, NewCarDTO> {
  @override
  NewCarModel toModel(NewCarDTO dto) {
    return NewCarModel(
      registration: dto.registration,
      brand: dto.brand,
      model: dto.model,
      color: dto.color,
      year: dto.year,
      ownerId: dto.ownerId,
      lat: dto.lat,
      lng: dto.lng,
    );
  }

  @override
  NewCarDTO toDTO(NewCarModel value) {
    return NewCarDTO(
      registration: value.registration,
      brand: value.brand,
      model: value.model,
      color: value.color,
      year: value.year,
      ownerId: value.ownerId,
      lat: value.lat,
      lng: value.lng,
    );
  }
}
