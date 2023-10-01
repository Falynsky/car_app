import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_model.freezed.dart';

@freezed
class CarModel with _$CarModel {
  const factory CarModel({
    required String id,
    required String registration,
    required String brand,
    required String model,
    required String color,
    required String year,
    required String ownerId,
    required double lat,
    required double lng,
  }) = _CarModel;
}
