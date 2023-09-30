// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarDTO _$CarDTOFromJson(Map<String, dynamic> json) => CarDTO(
      id: json['_id'] as String,
      registration: json['registration'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$CarDTOToJson(CarDTO instance) => <String, dynamic>{
      '_id': instance.id,
      'registration': instance.registration,
      'brand': instance.brand,
      'model': instance.model,
      'color': instance.color,
    };
