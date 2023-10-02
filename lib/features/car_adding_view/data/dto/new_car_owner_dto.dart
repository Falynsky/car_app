import 'package:json_annotation/json_annotation.dart';

part 'new_car_owner_dto.g.dart';

@JsonSerializable()
class NewCarOwnerDTO {
  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  @JsonKey(name: 'birth_date')
  final String birthDate;
  final String sex;

  const NewCarOwnerDTO({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.birthDate,
    required this.sex,
  });

  factory NewCarOwnerDTO.fromJson(Map<String, Object?> json) => _$NewCarOwnerDTOFromJson(json);

  Map<String, Object?> toJson() => _$NewCarOwnerDTOToJson(this);
}
