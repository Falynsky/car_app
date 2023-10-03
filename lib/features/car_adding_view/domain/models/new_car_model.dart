import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_car_model.freezed.dart';

@freezed
class NewCarModel with _$NewCarModel {
  const factory NewCarModel({
    required String registration,
    required String brand,
    required String model,
    required String color,
    required String year,
    required String ownerId,
    required double lat,
    required double lng,
  }) = _NewCarModel;
}
