import 'package:cars_app/features/car_list/data/models/car_model.dart';

typedef T JsonFactory<T>(Map<String, dynamic> json);

class JsonTypeParser {
  static const Map<Type, JsonFactory> jsonFactories = <Type, JsonFactory>{
    CarModel: CarModel.fromJson,
  };

  static dynamic decode<T>(entity) {
    if (entity is Iterable) {
      return _decodeList<T>(entity);
    }

    if (entity is Map<String, dynamic>) {
      return _decodeMap<T>(entity);
    }
    return entity;
  }

  static List<T> _decodeList<T>(Iterable values) =>
      values.where((element) => element != null).map<T>((value) => decode<T>(value)).toList();

  static T _decodeMap<T>(Map<String, dynamic> json) {
    final dynamic Function(Map<String, dynamic>)? jsonFactory = jsonFactories[T];
    if (jsonFactory == null && jsonFactory is! JsonFactory<T>) {
      throw ArgumentError('No JsonFactory for type $T');
    }

    return jsonFactory!(json);
  }
}
