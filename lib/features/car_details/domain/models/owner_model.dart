import 'package:freezed_annotation/freezed_annotation.dart';

part 'owner_model.freezed.dart';

@freezed
class OwnerModel with _$OwnerModel {
  const factory OwnerModel({
    required String id,
    required String firstName,
    required String lastName,
  }) = _OwnerModel;
}
