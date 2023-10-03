import 'package:cars_app/core/di/dependencies.dart';
import 'package:cars_app/core/widgets/loading_spinner.dart';
import 'package:cars_app/features/car_adding_view/domain/models/new_car_owner_model.dart';
import 'package:cars_app/features/car_adding_view/presentation/new_car_owner_cubit/new_car_owner_cubit.dart';
import 'package:cars_app/features/car_adding_view/presentation/new_car_owner_cubit/new_car_owner_state.dart';
import 'package:cars_app/features/car_list/presentation/widgets/car_list/car_list_frame.dart';
import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewCarOwnerPickerPage extends StatelessWidget {
  const NewCarOwnerPickerPage({Key? key}) : super(key: key);

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
        body: Container(
          child: Column(
            children: [
              const SizedBox(height: 10),
              BlocBuilder<NewCarOwnerCubit, NewCarOwnerState>(
                bloc: getIt<NewCarOwnerCubit>()..getOwners(),
                builder: (BuildContext context, NewCarOwnerState state) {
                  return state.maybeWhen(
                    orElse: CarListFrame.new,
                    loading: () => const LoadingSpinner(),
                    success: (List<NewCarOwnerModel> owners) => Expanded(
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: owners.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.of(context).pop(owners[index].id);
                              },
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black12,
                                    width: 2,
                                  ),
                                  color: Colors.orangeAccent,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 5,
                                      offset: Offset(0, 5),
                                    ),
                                  ],
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      owners[index].firstName + ' ' + owners[index].lastName,
                                      style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
