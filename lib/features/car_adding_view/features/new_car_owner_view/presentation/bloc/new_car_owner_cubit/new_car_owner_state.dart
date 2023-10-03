import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_car_owner_state.freezed.dart';

@freezed
class NewCarOwnerState with _$NewCarOwnerState {
  const factory NewCarOwnerState.loading() = _Loading;

  const factory NewCarOwnerState.success({
    required List<NewCarOwnerModel> owners,
  }) = _Success;

  const factory NewCarOwnerState.error() = _Error;
}
