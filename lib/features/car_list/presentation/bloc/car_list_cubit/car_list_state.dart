import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_list_state.freezed.dart';

@freezed
class CarListState with _$CarListState {
  const factory CarListState({
    required List<CarModel> cars,
    required bool isLoading,
  }) = _CarListState;

  factory CarListState.empty() {
    return const CarListState(
      cars: <CarModel>[],
      isLoading: true,
    );
  }
}
