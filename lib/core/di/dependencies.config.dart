// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjecteoConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cars_app/core/providers/car_app_provider.dart' as _i2;
import 'package:cars_app/core/utils/json_to_type_converter.dart' as _i8;
import 'package:cars_app/features/car_details/data/mappers/owner_model_mapper.dart'
    as _i9;
import 'package:cars_app/features/car_details/data/providers/owner_provider.dart'
    as _i10;
import 'package:cars_app/features/car_details/data/repositories/remote_owners_repository.dart'
    as _i12;
import 'package:cars_app/features/car_details/domain/repositories/owner_repository.dart'
    as _i11;
import 'package:cars_app/features/car_details/domain/usecases/get_owner_use_case.dart'
    as _i14;
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_cubit.dart'
    as _i15;
import 'package:cars_app/features/car_list/data/mappers/car_model_mapper.dart'
    as _i4;
import 'package:cars_app/features/car_list/data/providers/car_list_provider.dart'
    as _i3;
import 'package:cars_app/features/car_list/data/repositories/remote_cars_repository.dart'
    as _i6;
import 'package:cars_app/features/car_list/domain/repositories/cars_repository.dart'
    as _i5;
import 'package:cars_app/features/car_list/domain/usecases/get_all_cars_use_case.dart'
    as _i7;
import 'package:cars_app/features/car_list/presentation/bloc/car_list_cubit/car_list_cubit.dart'
    as _i13;
import 'package:injecteo/injecteo.dart' as _i1;

const String _dev = 'dev';
const String _test = 'test';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
///
/// configure registration of provided dependencies
void $injecteoConfig(
  _i1.ServiceLocator serviceLocator, {
  String? environment,
  _i1.EnvironmentFilter? environmentFilter,
}) {
  OtherInjectionModule().registerDependencies(
    serviceLocator,
    environment: environment,
    environmentFilter: environmentFilter,
  );
}

class OtherInjectionModule extends _i1.BaseInjectionModule {
  @override
  void registerDependencies(
    _i1.ServiceLocator serviceLocator, {
    String? environment,
    _i1.EnvironmentFilter? environmentFilter,
  }) {
    final serviceLocatorHelper = _i1.ServiceLocatorHelper(
      serviceLocator,
      environment,
      environmentFilter,
    );
    serviceLocatorHelper.registerLazySingleton<_i2.CarAppProvider>(
        () => _i2.CarAppProvider.create());
    serviceLocatorHelper.registerLazySingleton<_i3.CarListProvider>(
      () =>
          _i3.CarListProvider.create(serviceLocator.get<_i2.CarAppProvider>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i3.CarListProvider>(
      () => _i3.CarListProviderMock(),
      registerFor: {_test},
    );
    serviceLocatorHelper
        .registerFactory<_i4.CarModelMapper>(() => _i4.CarModelMapper());
    serviceLocatorHelper.registerLazySingleton<_i5.CarsRepository>(
        () => _i6.RemoteCarsRepository(
              carListProvider: serviceLocator.get<_i3.CarListProvider>(),
              mapper: serviceLocator.get<_i4.CarModelMapper>(),
            ));
    serviceLocatorHelper.registerLazySingleton<_i7.GetAllCarsUseCase>(
      () => _i7.GetAllCarsUseCase(serviceLocator.get<_i5.CarsRepository>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i7.GetAllCarsUseCase>(
      () => _i7.GetAllCarsUseCaseMock(),
      registerFor: {_test},
    );
    serviceLocatorHelper.registerLazySingleton<_i8.JsonToTypeConverter>(
        () => _i8.JsonToTypeConverter());
    serviceLocatorHelper
        .registerFactory<_i9.OwnerModelMapper>(() => _i9.OwnerModelMapper());
    serviceLocatorHelper.registerLazySingleton<_i10.OwnerProvider>(
      () => _i10.OwnerProvider.create(serviceLocator.get<_i2.CarAppProvider>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i11.OwnerRepository>(
        () => _i12.RemoteOwnersRepository(
              ownerProvider: serviceLocator.get<_i10.OwnerProvider>(),
              mapper: serviceLocator.get<_i9.OwnerModelMapper>(),
            ));
    serviceLocatorHelper.registerLazySingleton<_i13.CarListCubit>(() =>
        _i13.CarListCubit(
            getAllCarsUseCase: serviceLocator.get<_i7.GetAllCarsUseCase>()));
    serviceLocatorHelper.registerLazySingleton<_i14.GetOwnerUseCase>(
      () => _i14.GetOwnerUseCase(serviceLocator.get<_i11.OwnerRepository>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i15.CarDetailCubit>(() =>
        _i15.CarDetailCubit(
            getOwnerUseCase: serviceLocator.get<_i14.GetOwnerUseCase>()));
  }
}
