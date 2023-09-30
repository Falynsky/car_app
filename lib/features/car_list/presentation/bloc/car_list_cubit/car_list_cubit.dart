import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:cars_app/features/car_list/domain/usecases/get_all_cars.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injecteo/injecteo.dart';

@lazySingleton
class CarListCubit extends Cubit<CarListState> {
  final GetAllCarsUseCase getAllCarsUseCase;

  CarListCubit({
    required this.getAllCarsUseCase,
  }) : super(const CarListState.loading());

  Future<void> initCarList() async {
    emit(const CarListState.loading());
    final Either<Failure, List<CarModel>> either = await getAllCarsUseCase(NoParams());
    either.fold(
      (Failure failure) => emit(const CarListState.failure(message: 'Błąd pobierania danych')),
      (List<CarModel> cars) => emit(CarListState.success(cars: cars)),
    );
  }
}
