import 'dart:async';
import 'dart:convert';

import 'package:cars_app/core/utils/json_type_parser.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

@lazySingleton
class JsonToTypeConverter extends JsonConverter {
  const JsonToTypeConverter();

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(Response response) async {
    final dynamic originalBody = response.body;
    final BodyType updatedBody = _fromJsonData<BodyType, InnerType>(originalBody);
    final Response<BodyType> copyWith = response.copyWith(body: updatedBody);
    return Future<Response<BodyType>>.value(copyWith);
  }

  T _fromJsonData<T, InnerType>(String jsonData) {
    final jsonMap = json.decode(jsonData);
    return JsonTypeParser.decode<InnerType>(jsonMap);
  }
}
