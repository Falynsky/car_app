import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_details_state.freezed.dart';

@freezed
class CarDetailsState with _$CarDetailsState {
  const factory CarDetailsState.loading() = _Loading;

  const factory CarDetailsState.success({
    required OwnerModel owner,
  }) = _Success;

  const factory CarDetailsState.failure({
    required String message,
  }) = _Failure;
}
