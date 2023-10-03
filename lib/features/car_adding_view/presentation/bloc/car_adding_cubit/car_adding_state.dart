import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'car_adding_state.freezed.dart';

@freezed
class CarAddingState with _$CarAddingState {
  const factory CarAddingState.initial() = _Initial;

  const factory CarAddingState.error({
    required UniqueKey key,
    required String message,
  }) = _Error;

  const factory CarAddingState.success() = _Success;
}
