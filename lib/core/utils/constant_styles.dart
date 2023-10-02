import 'package:flutter/material.dart';

const TextStyle hintTextStyle = TextStyle(
  color: Colors.white54,
  fontFamily: 'OpenSans',
);

const TextStyle labelStyle = TextStyle(
  color: Colors.orange,
  fontSize: 15,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

const TextStyle buttonLabelStyle = TextStyle(
  color: Colors.black45,
  fontSize: 15,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final OutlineInputBorder focusedBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5.0),
  borderSide: const BorderSide(
    color: Color(0xFF306c63),
    width: 2.0,
  ),
);

final OutlineInputBorder enabledBorderStyle = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5.0),
  borderSide: const BorderSide(
    color: Colors.white54,
    width: 1.0,
  ),
);

const TextStyle errorMessageStyle = TextStyle(color: Color(0xFFE10000), fontSize: 14);

const OutlineInputBorder inputErrorBorderStyle = OutlineInputBorder(
  borderSide: BorderSide(color: Color(0xFFE10000), width: 2.0),
);
