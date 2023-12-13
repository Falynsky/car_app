import 'package:json_annotation/json_annotation.dart';

part 'car_dto.g.dart';

double stringToDouble(dynamic value) => double.parse(value.toString());

@JsonSerializable()
class CarDTO {
    const CarDTO({
    required this.id,
    required this.registration,
    required this.brand,
    required this.model,
    required this.color,
    required this.year,
    required this.ownerId,
    required this.lat,
    required this.lng,
  });

  factory CarDTO.fromJson(Map<String, Object?> json) => _$CarDTOFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  final String registration;
  final String brand;
  final String model;
  final String color;
  final String year;
  final String ownerId;
  @JsonKey(fromJson: stringToDouble)
  final double lat;
  @JsonKey(fromJson: stringToDouble)
  final double lng;

  Map<String, Object?> toJson() => _$CarDTOToJson(this);
}
