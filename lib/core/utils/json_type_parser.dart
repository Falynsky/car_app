import 'package:cars_app/features/car_adding_view/data/dto/error_dto.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_dto.dart';
import 'package:cars_app/features/car_adding_view/data/dto/new_car_response_dto.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/data/dto/new_car_owner_dto.dart';
import 'package:cars_app/features/car_details/data/dto/owner_dto.dart';
import 'package:cars_app/features/car_list/data/dto/car_dto.dart';

typedef JsonFactory<T> = T Function(Map<String, dynamic> json);

class JsonTypeParser {
  static const Map<Type, JsonFactory<dynamic>> jsonFactories = <Type, JsonFactory<dynamic>>{
    CarDTO: CarDTO.fromJson,
    OwnerDTO: OwnerDTO.fromJson,
    NewCarDTO: NewCarDTO.fromJson,
    NewCarOwnerDTO: NewCarOwnerDTO.fromJson,
    ErrorDTO: ErrorDTO.fromJson,
    NewCarResponseDTO: NewCarResponseDTO.fromJson,
  };

  static dynamic decode<T>(dynamic entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }

    return entity;
  }

  static List<T> _decodeList<T>(Iterable<dynamic> values) =>
      values.where((element) => element != null).map<T>((value) => decode<T>(value) as T).toList();

  static T _decodeMap<T>(Map<String, dynamic> json) {
    final dynamic Function(Map<String, dynamic>)? jsonFactory = jsonFactories[T];
    if (jsonFactory == null && jsonFactory is! JsonFactory<T>) {
      throw ArgumentError('No JsonFactory for type $T');
    }

    return jsonFactory!(json) as T;
  }
}
