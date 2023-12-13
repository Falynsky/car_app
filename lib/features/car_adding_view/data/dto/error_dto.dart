import 'package:json_annotation/json_annotation.dart';

part 'error_dto.g.dart';

@JsonSerializable()
class ErrorDTO {
  const ErrorDTO({
    required this.field,
    required this.message,
  });

  factory ErrorDTO.fromJson(Map<String, Object?> json) => _$ErrorDTOFromJson(json);
  final String field;
  final List<String> message;

  Map<String, Object?> toJson() => _$ErrorDTOToJson(this);
}
