import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class EmptyList extends StatelessWidget {
  final String caption;
  final IconData iconData;

  const EmptyList({
    required this.caption,
    required this.iconData,
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
              iconData,
              size: 80,
              color: Colors.grey[400],
            ),
            const SizedBox(height: 16),
            Text(caption, style: _textStyle()).tr(),
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
