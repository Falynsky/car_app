import 'package:cars_app/core/error/failures.dart';
import 'package:cars_app/core/usecases/usecase.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/domain/usecases/get_new_car_owners_use_case.dart';
import 'package:cars_app/features/car_adding_view/presentation/bloc/new_car_owner_cubit/new_car_owner_state.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injecteo/injecteo.dart';

@LazySingleton(env: <String>[Environment.dev])
class NewCarOwnerCubit extends Cubit<NewCarOwnerState> {
  final GetNewCarOwnersUseCase getNewCarOwnersUseCase;

  NewCarOwnerCubit({
    required this.getNewCarOwnersUseCase,
  }) : super(const NewCarOwnerState.loading());

  void getOwners() async {
    emit(const NewCarOwnerState.loading());
    final Either<Failure, List<NewCarOwnerModel>> either = await getNewCarOwnersUseCase(NoParams());
    either.fold(
      (Failure failure) => emit(const NewCarOwnerState.error()),
      (List<NewCarOwnerModel> owners) => emit(NewCarOwnerState.success(owners: owners)),
    );
  }
}
