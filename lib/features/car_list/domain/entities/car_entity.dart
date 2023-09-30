import 'package:equatable/equatable.dart';

class CarEntity extends Equatable {
  final int id;
  final String registrationNumber;
  final String brand;
  final String model;
  final String color;

  const CarEntity({
    required this.id,
    required this.registrationNumber,
    required this.brand,
    required this.model,
    required this.color,
  });

  @override
  List<Object> get props => <Object>[id, registrationNumber, brand, model, color];
}
