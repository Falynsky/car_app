import 'package:json_annotation/json_annotation.dart';

part 'error_dto.g.dart';

@JsonSerializable()
class ErrorDTO {
  final String field;
  final List<String> message;

  const ErrorDTO({
    required this.field,
    required this.message,
  });

  factory ErrorDTO.fromJson(Map<String, Object?> json) => _$ErrorDTOFromJson(json);

  Map<String, Object?> toJson() => _$ErrorDTOToJson(this);
}
