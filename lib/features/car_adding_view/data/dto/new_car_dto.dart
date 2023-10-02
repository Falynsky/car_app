import 'package:json_annotation/json_annotation.dart';

part 'new_car_dto.g.dart';

@JsonSerializable()
class NewCarDTO {
  final String id;
  final String registration;
  final String brand;
  final String model;
  final String color;
  final String year;
  final String ownerId;
  final double lat;
  final double lng;

  const NewCarDTO({
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

  factory NewCarDTO.fromJson(Map<String, Object?> json) => _$NewCarDTOFromJson(json);

  Map<String, Object?> toJson() => _$NewCarDTOToJson(this);
}
