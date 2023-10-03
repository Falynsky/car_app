import 'package:cars_app/features/car_adding_view/data/dto/error_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_car_response_dto.g.dart';

@JsonSerializable()
class NewCarResponseDTO {
  final String? message;
  final String? name;
  final List<ErrorDTO>? list;
  final int? status;

  const NewCarResponseDTO({
    this.message,
    this.name,
    this.list,
    this.status,
  });

  factory NewCarResponseDTO.fromJson(Map<String, Object?> json) => _$NewCarResponseDTOFromJson(json);

  Map<String, Object?> toJson() => _$NewCarResponseDTOToJson(this);
}
