import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/usecases/get_new_car_owners_use_case.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/presentation/bloc/new_car_owner_cubit/new_car_owner_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.dev, Environment.prod])
class NewCarOwnerCubit extends Cubit<NewCarOwnerState> {
  NewCarOwnerCubit({
    required this.getNewCarOwnersUseCase,
  }) : super(const NewCarOwnerState.loading());

  final GetNewCarOwnersUseCase getNewCarOwnersUseCase;

  Future<void> getOwners() async {
    emit(const NewCarOwnerState.loading());
    final Either<Failure, List<NewCarOwnerModel>> either = await getNewCarOwnersUseCase(NoParams());
    either.fold(
      (Failure failure) => emit(const NewCarOwnerState.error()),
      (List<NewCarOwnerModel> owners) => emit(NewCarOwnerState.success(owners: owners)),
    );
  }
}
