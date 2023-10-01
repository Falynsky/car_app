import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/domain/usecases/get_owner_use_case.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_state.dart';
import 'package:cars_app/features/car_list/domain/models/car_model.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoder_buddy/geocoder_buddy.dart';
import 'package:injecteo/injecteo.dart';
import 'package:latlong2/latlong.dart';

@lazySingleton
class CarDetailCubit extends Cubit<CarDetailsState> {
  final GetOwnerUseCase getOwnerUseCase;

  CarDetailCubit({
    required this.getOwnerUseCase,
  }) : super(const CarDetailsState.loading());

  void initCarDetail([CarModel? car]) async {
    emit(const CarDetailsState.loading());
    final CarModel? carModel = car;
    final String ownerId = carModel!.ownerId;
    final List<GBSearchData> list = await GeocoderBuddy.query('Katowice');
    final Either<Failure, OwnerModel> either = await getOwnerUseCase(Params(ownerId: ownerId));
    either.fold(
      (Failure failure) => emit(CarDetailsState.failure(message: failure.message)),
      (OwnerModel owner) {
        emit(CarDetailsState.success(
            owner: owner, latLng: LatLng(double.parse(list[0].lat), double.parse(list[0].lon))));
      },
    );
  }
}
