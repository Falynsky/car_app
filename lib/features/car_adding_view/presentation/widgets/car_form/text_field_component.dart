import 'package:cars_app/core/utils/constant_styles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class TextFieldComponent extends StatelessWidget {
  const TextFieldComponent({
    required this.controller,
    required this.icon,
    required this.placeHolder,
    required this.isRequired,
    this.label,
    this.customRegExp,
    this.obscureText,
    this.customErrorMessage,
    super.key,
  });

  final TextEditingController controller;
  final String placeHolder;
  final IconData icon;
  final bool isRequired;
  final String? label;
  final bool? obscureText;
  final RegExp? customRegExp;
  final String? customErrorMessage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          if (label != null)
            Padding(
              padding: const EdgeInsets.only(left: 4),
              child: Text(label!, style: labelStyle).tr(),
            ),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              obscureText: obscureText ?? false,
              autovalidateMode: null,
              validator: _validateField,
              textInputAction: TextInputAction.done,
              controller: controller,
              keyboardType: TextInputType.text,
              style: const TextStyle(
                color: Colors.white,
                fontFamily: 'OpenSans',
              ),
              decoration: _textFieldInputDecoration(),
            ),
          ),
        ],
      ),
    );
  }

  String? _validateField(String? value) {
    if (value == null) {
      return null;
    }

    if (customRegExp != null && !customRegExp!.hasMatch(value)) {
      return customErrorMessage!;
    }

    return null;
  }

  InputDecoration _textFieldInputDecoration() {
    return InputDecoration(
      filled: true,
      fillColor: Colors.orangeAccent,
      focusedBorder: focusedBorderStyle,
      enabledBorder: enabledBorderStyle,
      contentPadding: const EdgeInsets.only(top: 14.0),
      prefixIcon: Icon(icon, color: Colors.white),
      hintText: placeHolder,
      hintStyle: hintTextStyle,
      errorStyle: errorMessageStyle,
      errorBorder: inputErrorBorderStyle,
    );
  }
}
