import 'package:flutter/material.dart';

class ExpandedRow extends StatelessWidget {
  const ExpandedRow({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: children,
      ),
    );
  }
}
