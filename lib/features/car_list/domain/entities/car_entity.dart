import 'package:equatable/equatable.dart';

class CarEntity extends Equatable {
  final String id;
  final String registration;
  final String brand;
  final String model;
  final String color;

  const CarEntity({
    required this.id,
    required this.registration,
    required this.brand,
    required this.model,
    required this.color,
  });

  @override
  List<Object> get props => <Object>[id, registration, brand, model, color];
}
