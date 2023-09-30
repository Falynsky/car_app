import 'package:json_annotation/json_annotation.dart';

part 'car_dto.g.dart';

@JsonSerializable()
class CarDTO {
  @JsonKey(name: '_id')
  final String id;
  final String registration;
  final String brand;
  final String model;
  final String color;

  const CarDTO({
    required this.id,
    required this.registration,
    required this.brand,
    required this.model,
    required this.color,
  });

  factory CarDTO.fromJson(Map<String, Object?> json) => _$CarDTOFromJson(json);

  Map<String, Object?> toJson() => _$CarDTOToJson(this);
}
