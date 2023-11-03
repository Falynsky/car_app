import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/widgets/loading_spinner.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/presentation/bloc/new_car_owner_cubit/new_car_owner_cubit.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/presentation/bloc/new_car_owner_cubit/new_car_owner_state.dart';
import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/presentation/widgets/owner_picker/new_car_owner_picker_frame.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewCarOwnerPickerPage extends StatelessWidget {
  const NewCarOwnerPickerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future<bool>.value(false),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            iconSize: 30,
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          title: const Text(LocaleKeys.new_car_pick_owner).tr(),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            BlocBuilder<NewCarOwnerCubit, NewCarOwnerState>(
              bloc: getIt<NewCarOwnerCubit>()..getOwners(),
              builder: (BuildContext context, NewCarOwnerState state) {
                return state.maybeWhen(
                  orElse: NewCarOwnerPickerFrame.new,
                  loading: () => const LoadingSpinner(),
                  success: (List<NewCarOwnerModel> owners) => Expanded(
                    child: NewCarOwnerPickerFrame(owners: owners),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
