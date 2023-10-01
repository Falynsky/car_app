import 'package:cars_app/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EmptyCarList extends StatelessWidget {
  const EmptyCarList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Icon(
              Icons.directions_car,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(LocaleKeys.car_list_empty, style: _textStyle()).tr(),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  TextStyle _textStyle() {
    return TextStyle(
      fontSize: 16,
      color: Colors.grey[400],
    );
  }
}
