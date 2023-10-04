import 'package:bloc/bloc.dart';
import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:cars_app/features/car_adding_view/domain/usecases/add_new_car_use_case.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.dev, Environment.prod])
class CarAddingCubit extends Cubit<CarAddingState> {
  final AddNewCarUseCase addNewCarUseCase;

  CarAddingCubit({
    required this.addNewCarUseCase,
  }) : super(const CarAddingState.initial());

  void registerNewCar(NewCarModel carModel) async {
    final Either<Failure, bool> either = await addNewCarUseCase(Params(newCarModel: carModel));
    either.fold(
      (Failure failure) => emit(
        CarAddingState.error(key: UniqueKey(), message: failure.message),
      ),
      (bool r) => emit(const CarAddingState.success()),
    );
  }
}
