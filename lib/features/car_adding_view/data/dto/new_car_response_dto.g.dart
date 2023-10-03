// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_car_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewCarResponseDTO _$NewCarResponseDTOFromJson(Map<String, dynamic> json) =>
    NewCarResponseDTO(
      message: json['message'] as String,
      name: json['name'] as String,
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ErrorDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NewCarResponseDTOToJson(NewCarResponseDTO instance) =>
    <String, dynamic>{
      'message': instance.message,
      'name': instance.name,
      'errors': instance.errors,
    };
