import 'package:cars_app/core/utils/json_to_type_converter.dart';
import 'package:cars_app/features/car_list/data/providers/car_list_provider.dart';
import 'package:cars_app/features/car_list/data/repositories/remote_cars_repository.dart';
import 'package:cars_app/features/car_list/domain/repositories/cars_repository.dart';
import 'package:cars_app/features/car_list/domain/usecases/get_all_cars.dart';
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_cubit.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(() => CarListCubit(getAllCarsUseCase: getIt()));
  getIt.registerLazySingleton(() => GetAllCarsUseCase(getIt()));

  getIt.registerLazySingleton<CarsRepository>(() => RemoteCarsRepository(carListProvider: getIt()));

  getIt.registerLazySingleton<JsonToTypeConverter>(JsonToTypeConverter.new);
  getIt.registerLazySingleton<CarListProvider>(CarListProvider.create);
}
