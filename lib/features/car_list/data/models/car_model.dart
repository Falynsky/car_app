import 'package:cars_app/features/car_list/domain/entities/car_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'car_model.g.dart';

@JsonSerializable()
class CarModel extends CarEntity {
  @override
  @JsonKey(name: '_id')
  final String id;
  @override
  final String registration;
  @override
  final String brand;
  @override
  final String model;
  @override
  final String color;

  const CarModel({
    required this.id,
    required this.registration,
    required this.brand,
    required this.model,
    required this.color,
  }) : super(
          id: id,
          registration: registration,
          brand: brand,
          model: model,
          color: color,
        );

  factory CarModel.fromJson(Map<String, Object?> json) => _$CarModelFromJson(json);

  Map<String, Object?> toJson() => _$CarModelToJson(this);
}
