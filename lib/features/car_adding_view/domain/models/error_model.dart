import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_model.freezed.dart';

@freezed
class ErrorModel with _$ErrorModel {
  const factory ErrorModel({
    required String field,
    required List<String> message,
  }) = _ErrorModel;
}
