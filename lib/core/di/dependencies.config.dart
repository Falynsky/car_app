// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjecteoConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cars_app/core/providers/car_app_provider.dart' as _i2;
import 'package:cars_app/core/utils/json_to_type_converter.dart' as _i8;
import 'package:cars_app/features/car_adding_view/data/mappers/new_car_model_mapper.dart'
    as _i9;
import 'package:cars_app/features/car_adding_view/data/mappers/new_car_owner_model_mapper.dart'
    as _i10;
import 'package:cars_app/features/car_adding_view/data/providers/new_car_owner_provider.dart'
    as _i11;
import 'package:cars_app/features/car_adding_view/data/providers/new_car_provider.dart'
    as _i14;
import 'package:cars_app/features/car_adding_view/data/repositories/remote_new_car_owners_repository.dart'
    as _i13;
import 'package:cars_app/features/car_adding_view/data/repositories/remote_new_car_repository.dart'
    as _i16;
import 'package:cars_app/features/car_adding_view/domain/repositories/new_car_owner_repository.dart'
    as _i12;
import 'package:cars_app/features/car_adding_view/domain/repositories/new_car_repository.dart'
    as _i15;
import 'package:cars_app/features/car_adding_view/domain/usecases/add_new_car_use_case.dart'
    as _i21;
import 'package:cars_app/features/car_adding_view/domain/usecases/get_new_car_owners_use_case.dart'
    as _i24;
import 'package:cars_app/features/car_adding_view/presentation/bloc/car_adding_cubit/car_adding_cubit.dart'
    as _i22;
import 'package:cars_app/features/car_adding_view/presentation/new_car_owner_cubit/new_car_owner_cubit.dart'
    as _i26;
import 'package:cars_app/features/car_details/data/mappers/owner_model_mapper.dart'
    as _i17;
import 'package:cars_app/features/car_details/data/providers/owner_provider.dart'
    as _i18;
import 'package:cars_app/features/car_details/data/repositories/remote_owners_repository.dart'
    as _i20;
import 'package:cars_app/features/car_details/domain/repositories/owner_repository.dart'
    as _i19;
import 'package:cars_app/features/car_details/domain/usecases/get_owner_use_case.dart'
    as _i25;
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_cubit.dart'
    as _i27;
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
    as _i23;
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
        .registerFactory<_i9.NewCarModelMapper>(() => _i9.NewCarModelMapper());
    serviceLocatorHelper.registerFactory<_i10.NewCarOwnerModelMapper>(
        () => _i10.NewCarOwnerModelMapper());
    serviceLocatorHelper.registerLazySingleton<_i11.NewCarOwnerProvider>(
      () => _i11.NewCarOwnerProvider.create(
          serviceLocator.get<_i2.CarAppProvider>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i12.NewCarOwnerRepository>(
        () => _i13.RemoteNewCarOwnersRepository(
              ownerProvider: serviceLocator.get<_i11.NewCarOwnerProvider>(),
              mapper: serviceLocator.get<_i10.NewCarOwnerModelMapper>(),
            ));
    serviceLocatorHelper.registerLazySingleton<_i14.NewCarProvider>(
      () =>
          _i14.NewCarProvider.create(serviceLocator.get<_i2.CarAppProvider>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i15.NewCarRepository>(
        () => _i16.RemoteNewCarRepository(
              newCarProvider: serviceLocator.get<_i14.NewCarProvider>(),
              mapper: serviceLocator.get<_i9.NewCarModelMapper>(),
            ));
    serviceLocatorHelper
        .registerFactory<_i17.OwnerModelMapper>(() => _i17.OwnerModelMapper());
    serviceLocatorHelper.registerLazySingleton<_i18.OwnerProvider>(
      () => _i18.OwnerProvider.create(serviceLocator.get<_i2.CarAppProvider>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i19.OwnerRepository>(
        () => _i20.RemoteOwnersRepository(
              ownerProvider: serviceLocator.get<_i18.OwnerProvider>(),
              mapper: serviceLocator.get<_i17.OwnerModelMapper>(),
            ));
    serviceLocatorHelper.registerLazySingleton<_i21.AddNewCarUseCase>(
      () => _i21.AddNewCarUseCase(serviceLocator.get<_i15.NewCarRepository>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i22.CarAddingCubit>(
      () => _i22.CarAddingCubit(
          addNewCarUseCase: serviceLocator.get<_i21.AddNewCarUseCase>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i23.CarListCubit>(() =>
        _i23.CarListCubit(
            getAllCarsUseCase: serviceLocator.get<_i7.GetAllCarsUseCase>()));
    serviceLocatorHelper.registerLazySingleton<_i24.GetNewCarOwnersUseCase>(
      () => _i24.GetNewCarOwnersUseCase(
          serviceLocator.get<_i12.NewCarOwnerRepository>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i25.GetOwnerUseCase>(
      () => _i25.GetOwnerUseCase(serviceLocator.get<_i19.OwnerRepository>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i26.NewCarOwnerCubit>(
      () => _i26.NewCarOwnerCubit(
          getNewCarOwnersUseCase:
              serviceLocator.get<_i24.GetNewCarOwnersUseCase>()),
      registerFor: {_dev},
    );
    serviceLocatorHelper.registerLazySingleton<_i27.CarDetailCubit>(() =>
        _i27.CarDetailCubit(
            getOwnerUseCase: serviceLocator.get<_i25.GetOwnerUseCase>()));
  }
}
