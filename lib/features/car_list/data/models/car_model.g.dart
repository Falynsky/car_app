// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarModel _$CarModelFromJson(Map<String, dynamic> json) => CarModel(
      id: json['_id'] as String,
      registration: json['registration'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$CarModelToJson(CarModel instance) => <String, dynamic>{
      '_id': instance.id,
      'registration': instance.registration,
      'brand': instance.brand,
      'model': instance.model,
      'color': instance.color,
    };
