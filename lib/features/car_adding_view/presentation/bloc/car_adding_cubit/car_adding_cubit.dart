import 'package:bloc/bloc.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_state.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.prod, Environment.dev])
class CarAddingCubit extends Cubit<CarAddingState> {
  CarAddingCubit() : super(const CarAddingState.loading());
}
