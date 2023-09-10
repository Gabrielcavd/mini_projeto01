import 'package:flutter/material.dart';

class CustomizableContainer extends StatelessWidget {
  const CustomizableContainer({super.key, required this.cor});
  final Color cor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(color: cor),
      ),
    );
  }
}
