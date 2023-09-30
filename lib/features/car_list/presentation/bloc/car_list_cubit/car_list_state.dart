import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_list_state.freezed.dart';

@freezed
class CarListState with _$CarListState {
  const factory CarListState.loading() = _Loading;

  const factory CarListState.success({
    required List<CarModel> cars,
  }) = _Success;

  const factory CarListState.failure({
    required String message,
  }) = _Failure;

  const factory CarListState.empty() = _Empty;
}
