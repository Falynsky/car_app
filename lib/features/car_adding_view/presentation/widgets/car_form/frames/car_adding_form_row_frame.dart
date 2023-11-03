import 'package:flutter/material.dart';

class CarAddingFormRowFrame extends StatelessWidget {
  const CarAddingFormRowFrame({
    required this.left,
    this.isExpanded = true,
    this.right,
    super.key,
  });

  final Widget left;
  final bool isExpanded;
  final Widget? right;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: right != null ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      mainAxisAlignment: right != null ? MainAxisAlignment.start : MainAxisAlignment.center,
      children: <Widget>[
        if (!isExpanded) left,
        if (isExpanded) Expanded(child: left),
        if (right != null && !isExpanded) right!,
        if (right != null && isExpanded) Expanded(child: right!),
      ],
    );
  }
}
