import 'package:cars_app/features/car_adding_view/domain/models/error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_car_response_model.freezed.dart';

@freezed
class NewCarResponseModel with _$NewCarResponseModel {
  const factory NewCarResponseModel({
    String? message,
    String? name,
    List<ErrorModel>? errors,
    int? status,
  }) = _NewCarResponseModel;
}
