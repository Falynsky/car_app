// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_car_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewCarDTO _$NewCarDTOFromJson(Map<String, dynamic> json) => NewCarDTO(
      id: json['id'] as String,
      registration: json['registration'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String,
      year: json['year'] as String,
      ownerId: json['ownerId'] as String,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
    );

Map<String, dynamic> _$NewCarDTOToJson(NewCarDTO instance) => <String, dynamic>{
      'id': instance.id,
      'registration': instance.registration,
      'brand': instance.brand,
      'model': instance.model,
      'color': instance.color,
      'year': instance.year,
      'ownerId': instance.ownerId,
      'lat': instance.lat,
      'lng': instance.lng,
    };
