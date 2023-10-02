import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  final EdgeInsets? padding;
  final Widget child;
  final VoidCallback? onPressed;

  const CustomRaisedButton({
    required this.child,
    this.padding,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        padding: padding,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 5.0,
            backgroundColor: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            textStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
