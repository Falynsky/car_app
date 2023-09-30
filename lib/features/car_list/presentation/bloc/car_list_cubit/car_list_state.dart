import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_list_state.freezed.dart';

@freezed
class CarListState with _$CarListState {
  const factory CarListState({
    required List<Map<String, Object>> cars,
    required bool isLoading,
  }) = _CarListState;
}
