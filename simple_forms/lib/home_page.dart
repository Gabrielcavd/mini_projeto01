import 'package:flutter/material.dart';
import 'package:simple_forms/textFieldDecoration.dart';
import 'package:simple_forms/textField_row.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text(
          "Application",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.keyboard_backspace_outlined),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert_sharp),
          ),
          const SizedBox(
            width: 1,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Personal Info",
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: getTextFieldDecoration("First Name"),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextField(
                  decoration: getTextFieldDecoration("Last Name"),
                ),
              ),
              RowTextField(
                textField1: TextField(
                  decoration: getTextFieldDecoration("BirthDay",
                      helperText: "MM/DD/YYYY"),
                ),
                textField2: TextField(
                  decoration: getTextFieldDecoration("Social Security",
                      helperText: "###-##-####"),
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Text(
                "Residence Address",
                style: TextStyle(fontSize: 20),
              ),
              TextField(
                decoration: getTextFieldDecoration("Address"),
              ),
              RowTextField(
                textField1: TextField(
                  decoration: getTextFieldDecoration("City"),
                ),
                textField2: TextField(
                  decoration: getTextFieldDecoration(
                    "State",
                    suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ),
              RowTextField(
                textField1: TextField(
                  decoration: getTextFieldDecoration("ZIP Code"),
                ),
                textField2: TextField(
                  decoration: getTextFieldDecoration(
                    "Country",
                    suffixIcon: const Icon(Icons.keyboard_arrow_down),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
