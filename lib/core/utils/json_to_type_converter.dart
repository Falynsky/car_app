import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';

class JsonToTypeConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  const JsonToTypeConverter(this.typeToJsonFactoryMap);

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final dynamic originalBody = response.body;
    final BodyType updatedBody = _fromJsonData<BodyType, InnerType>(originalBody, typeToJsonFactoryMap[InnerType]!);
    final Response<BodyType> copyWith = response.copyWith(body: updatedBody);
    return Future<Response<BodyType>>.value(copyWith);
  }

  T _fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    final jsonMap = json.decode(jsonData);

    if (jsonMap is List) {
      return jsonMap.map((item) => jsonParser(item as Map<String, dynamic>) as InnerType).toList() as T;
    }

    return jsonParser(jsonMap);
  }
}
