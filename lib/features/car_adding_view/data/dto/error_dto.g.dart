// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ErrorDTO _$ErrorDTOFromJson(Map<String, dynamic> json) => ErrorDTO(
      field: json['field'] as String,
      message:
          (json['message'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ErrorDTOToJson(ErrorDTO instance) => <String, dynamic>{
      'field': instance.field,
      'message': instance.message,
    };
