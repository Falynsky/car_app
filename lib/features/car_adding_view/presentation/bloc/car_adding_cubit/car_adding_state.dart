import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_adding_state.freezed.dart';

@freezed
class CarAddingState with _$CarAddingState {
  const factory CarAddingState.loading() = _Loading;
  const factory CarAddingState.error() = _Error;
  const factory CarAddingState.success() = _Success;
}
