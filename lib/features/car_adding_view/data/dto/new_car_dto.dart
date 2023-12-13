import 'package:json_annotation/json_annotation.dart';

part 'new_car_dto.g.dart';

double stringToDouble(dynamic value) => double.parse(value.toString());
String doubleToString(dynamic value) => value.toString();

@JsonSerializable()
class NewCarDTO {
    const NewCarDTO({
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

  Map<String, Object?> toJson() => _$NewCarDTOToJson(this);
}
