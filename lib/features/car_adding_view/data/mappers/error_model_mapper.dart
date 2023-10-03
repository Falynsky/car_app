import 'package:cars_app/core/data/two_way_mapper.dart';
import 'package:cars_app/features/car_adding_view/data/dto/error_dto.dart';
import 'package:cars_app/features/car_adding_view/domain/models/error_model.dart';
import 'package:injecteo/injecteo.dart';

@inject
class ErrorModelMapper implements TwoWayMapper<ErrorModel, ErrorDTO> {
  @override
  ErrorDTO toDTO(ErrorModel value) {
    return ErrorDTO(
      field: value.field,
      message: value.message,
    );
  }

  @override
  ErrorModel toModel(ErrorDTO value) {
    return ErrorModel(
      field: value.field,
      message: value.message,
    );
  }
}
