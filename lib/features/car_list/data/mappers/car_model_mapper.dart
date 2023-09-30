import 'package:cars_app/core/data/two_way_mapper.dart';
import 'package:cars_app/features/car_list/data/dto/car_dto.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';

class CarModelMapper implements TwoWayMapper<CarModel, CarDTO> {
  @override
  CarDTO toDTO(CarModel value) {
    return CarDTO(
      id: value.id,
      brand: value.brand,
      model: value.model,
      color: value.color,
      registration: value.registration,
    );
  }

  @override
  CarModel toModel(CarDTO value) {
    return CarModel(
      id: value.id,
      brand: value.brand,
      model: value.model,
      color: value.color,
      registration: value.registration,
    );
  }
}