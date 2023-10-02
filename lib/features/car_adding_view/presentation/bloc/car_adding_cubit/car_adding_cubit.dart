import 'package:bloc/bloc.dart';
import 'package:cars_app/features/car_adding_view/domain/usecases/add_new_car_use_case.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_state.dart';
import 'package:injecteo/injecteo.dart';

@lazySingleton
class CarAddingCubit extends Cubit<CarAddingState> {
  final AddNewCarUseCase addNewCarUseCase;
  CarAddingCubit({required this.addNewCarUseCase}) : super(const CarAddingState.loading());
}
