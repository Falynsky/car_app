import 'package:cars_app/features/car_list/domain/entities/car_entity.dart';

class CarModel extends CarEntity {
  const CarModel({
    required super.id,
    required super.registrationNumber,
    required super.brand,
    required super.model,
    required super.color,
  });

  factory CarModel.fromJson(Map<String, Object?> json) {
    return CarModel(
      id: json['id'] as int,
      registrationNumber: json['registrationNumber'] as String,
      brand: json['brand'] as String,
      model: json['model'] as String,
      color: json['color'] as String,
    );
  }

  Map<String, Object> toJson() {
    return <String, Object>{
      'id': id,
      'registrationNumber': registrationNumber,
      'brand': brand,
      'model': model,
      'color': color,
    };
  }
}
