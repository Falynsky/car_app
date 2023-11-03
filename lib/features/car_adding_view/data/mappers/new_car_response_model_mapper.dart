import 'package:cars_app/core/data/two_way_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_response_dto.dart';
import 'package:cars_app/features/car_adding_view/data/mappers/error_model_mapper.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_response_model.dart';
import 'package:injecteo/injecteo.dart';

@inject
class NewCarResponseModelMapper implements TwoWayMapper<NewCarResponseModel, NewCarResponseDTO> {
  NewCarResponseModelMapper(this.errorModelMapper);

  final ErrorModelMapper errorModelMapper;

  @override
  NewCarResponseDTO toDTO(NewCarResponseModel value) {
    return NewCarResponseDTO(
      message: value.message,
      name: value.name,
      list: value.errors?.map(errorModelMapper.toDTO).toList(),
      status: value.status,
    );
  }

  @override
  NewCarResponseModel toModel(NewCarResponseDTO value) {
    return NewCarResponseModel(
      message: value.message,
      name: value.name,
      errors: value.list?.map(errorModelMapper.toModel).toList(),
      status: value.status,
    );
  }
}
