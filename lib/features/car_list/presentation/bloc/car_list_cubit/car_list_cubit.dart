import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarListCubit extends Cubit<CarListState> {
  CarListCubit()
      : super(const CarListState(
          cars: <Map<String, Object>>[],
          isLoading: false,
        ));
}
