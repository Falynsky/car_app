import 'package:json_annotation/json_annotation.dart';

part 'new_car_dto.g.dart';

double stringToDouble(value) => double.parse(value.toString());
String doubleToString(value) => value.toString();

@JsonSerializable()
class NewCarDTO {
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
