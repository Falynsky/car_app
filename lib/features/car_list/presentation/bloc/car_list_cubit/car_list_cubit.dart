import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/usecases/get_all_cars.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListCubit extends Cubit<CarListState> {
  final GetAllCarsUseCase getAllCarsUseCase;

  CarListCubit({
    required this.getAllCarsUseCase,
  }) : super(CarListState.empty());

  Future<void> initCarList() async {
    final Either<Failure, List<CarModel>> either = await getAllCarsUseCase(NoParams());
    either.fold(
      (Failure failure) => emit(state.copyWith(isLoading: true, cars: <CarModel>[])),
      (List<CarModel> cars) => emit(state.copyWith(isLoading: false, cars: cars)),
    );
  }
}
