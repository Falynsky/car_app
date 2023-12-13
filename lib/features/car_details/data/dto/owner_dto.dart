import 'package:json_annotation/json_annotation.dart';

part 'owner_dto.g.dart';

@JsonSerializable()
class OwnerDTO {
  const OwnerDTO({
    required this.id,
    required this.firstName,
    required this.lastName,
  });

  factory OwnerDTO.fromJson(Map<String, Object?> json) => _$OwnerDTOFromJson(json);

  @JsonKey(name: '_id')
  final String id;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;

  Map<String, Object?> toJson() => _$OwnerDTOToJson(this);
}
