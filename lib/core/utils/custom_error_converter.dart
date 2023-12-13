import 'dart:async';
import 'dart:convert';

import 'package:cars_app/core/utils/json_type_parser.dart';
import 'package:chopper/chopper.dart';
import 'package:injecteo/injecteo.dart';

@lazySingleton
class CustomErrorConverter extends ErrorConverter {
  @override
  FutureOr<Response<dynamic>> convertError<BodyType, InnerType>(Response<dynamic> response) {
    final dynamic error = response.body;
    final BodyType updatedBody = _fromJsonData<BodyType, InnerType>(error as String) as BodyType;
    final Response<BodyType> copyWith = response.copyWith(body: updatedBody);
    return Future<Response<dynamic>>.value(copyWith);
  }

  dynamic _fromJsonData<T, InnerType>(String jsonData) {
    final jsonMap = json.decode(jsonData);
    return JsonTypeParser.decode<InnerType>(jsonMap);
  }
}
