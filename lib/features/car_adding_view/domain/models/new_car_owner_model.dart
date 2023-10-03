import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_car_owner_model.freezed.dart';

@freezed
class NewCarOwnerModel with _$NewCarOwnerModel {
  const factory NewCarOwnerModel({
    required String id,
    required String firstName,
    required String lastName,
  }) = _NewCarOwnerModel;
}
