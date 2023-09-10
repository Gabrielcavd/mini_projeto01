import 'package:flutter/material.dart';
import 'customizable_container.dart';
import 'expanded_row.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            ExpandedRow(
              children: [
                CustomizableContainer(
                  cor: Colors.blue,
                ),
                CustomizableContainer(
                  cor: Colors.red,
                ),
                CustomizableContainer(
                  cor: Colors.yellow,
                ),
              ],
            ),
            ExpandedRow(
              children: [
                CustomizableContainer(
                  cor: Colors.green,
                ),
                CustomizableContainer(
                  cor: Colors.blue,
                ),
                CustomizableContainer(
                  cor: Colors.red,
                ),
              ],
            ),
            ExpandedRow(
              children: [
                CustomizableContainer(
                  cor: Colors.yellow,
                ),
                CustomizableContainer(
                  cor: Colors.green,
                ),
                CustomizableContainer(
                  cor: Colors.blue,
                ),
              ],
            ),
            ExpandedRow(
              children: [
                CustomizableContainer(
                  cor: Colors.red,
                ),
                CustomizableContainer(
                  cor: Colors.yellow,
                ),
                CustomizableContainer(
                  cor: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
