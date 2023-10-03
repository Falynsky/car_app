import 'package:bloc/bloc.dart';
import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_model.dart';
import 'package:cars_app/features/car_adding_view/domain/usecases/add_new_car_use_case.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_state.dart';
import 'package:dartz/dartz.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.dev])
class CarAddingCubit extends Cubit<CarAddingState> {
  final AddNewCarUseCase addNewCarUseCase;

  CarAddingCubit({
    required this.addNewCarUseCase,
  }) : super(const CarAddingState.loading());

  void loading() async {
    emit(const CarAddingState.loading());
  }

  void registerNewCar(NewCarModel carModel) async {
    final Either<Failure, bool> either = await addNewCarUseCase(Params(newCarModel: carModel));
    either.fold(
      (Failure l) => emit(const CarAddingState.error()),
      (bool r) => emit(const CarAddingState.success()),
    );
  }
}
