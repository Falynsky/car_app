import 'package:cars_app/features/car_adding_view/features/new_car_owner_view/domain/models/new_car_owner_model.dart';
import 'package:flutter/material.dart';

class NewCarOwnerCard extends StatelessWidget {
  const NewCarOwnerCard({
    required this.owner,
    super.key,
  });

  final NewCarOwnerModel owner;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pop(owner.id);
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
            boxShadow: const <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 5,
                offset: Offset(0, 5),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '${owner.firstName} ${owner.lastName}',
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
