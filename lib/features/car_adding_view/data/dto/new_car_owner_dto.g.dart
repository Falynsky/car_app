// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_car_owner_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewCarOwnerDTO _$NewCarOwnerDTOFromJson(Map<String, dynamic> json) =>
    NewCarOwnerDTO(
      id: json['_id'] as String,
      firstName: json['first_name'] as String,
      lastName: json['last_name'] as String,
    );

Map<String, dynamic> _$NewCarOwnerDTOToJson(NewCarOwnerDTO instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
    };
