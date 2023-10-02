import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/features/car_details/domain/models/owner_model.dart';
import 'package:cars_app/features/car_details/domain/usecases/get_owner_use_case.dart';
import 'package:cars_app/features/car_details/presentation/bloc/car_details_cubit/car_details_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injecteo/injecteo.dart';

@lazySingleton
class CarDetailCubit extends Cubit<CarDetailsState> {
  final GetOwnerUseCase getOwnerUseCase;

  CarDetailCubit({
    required this.getOwnerUseCase,
  }) : super(const CarDetailsState.loading());

  void initCarDetail(String ownerId) async {
    emit(const CarDetailsState.loading());
    final Either<Failure, OwnerModel> either = await getOwnerUseCase(Params(ownerId: ownerId));
    either.fold(
      (Failure failure) => emit(CarDetailsState.failure(message: failure.message)),
      (OwnerModel owner) => emit(CarDetailsState.success(owner: owner)),
    );
  }
}
