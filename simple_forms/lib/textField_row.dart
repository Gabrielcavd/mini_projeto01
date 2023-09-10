import 'package:flutter/material.dart';

class RowTextField extends StatelessWidget {
  const RowTextField(
      {super.key, required this.textField1, required this.textField2});
  final TextField textField1;
  final TextField textField2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: textField1,
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: textField2,
        ),
      ],
    );
  }
}
