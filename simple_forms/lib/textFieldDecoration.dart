import 'package:flutter/material.dart';

InputDecoration getTextFieldDecoration(String labelText,
    {String? helperText, Icon? suffixIcon}) {
  return InputDecoration(
    labelText: labelText,
    helperText: helperText,
    suffixIcon: suffixIcon,
  );
}
