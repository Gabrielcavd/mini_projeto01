import 'package:bmi_calculator/Components/constants.dart';
import 'package:bmi_calculator/Components/icon_text.dart';
import 'package:bmi_calculator/Components/roundIcon_button.dart';
import 'package:bmi_calculator/Pages/results_page.dart';
import 'package:flutter/material.dart';
import '../Components/bottom_button.dart';
import 'package:bmi_calculator/Components/calculator_brain.dart';
import '../Components/content_tile.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  late double altura;
  late int peso;

  @override
  void initState() {
    super.initState();
    altura = 1.6;
    peso = 55;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CALCULADORA BMI"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: contentTile(
              activeConte
               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Altura",
                    style: widgetTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        altura.toStringAsFixed(2),
                        style: numberTextStyle,
                      ),
                      const Text(
                        "m",
                        style: widgetTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: const SliderThemeData(
                      thumbShape:
                          RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 30.0),
                      overlayColor: Color.fromARGB(48, 142, 10, 93),
                      thumbColor: Colors.pink,
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.grey,
                    ),
                    child: Slider(
                      min: 1.2,
                      max: 2.8,
                      value: altura,
                      onChanged: (newAltura) {
                        setState(() {
                          altura = newAltura;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: contentTile(
              activeContentTileColor,
              widgetChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Peso",
                    style: widgetTextStyle,
                  ),
                  Text(
                    peso.toString(),
                    style: numberTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      roundIconButton(
                        onPressed: () => () {
                          setState(() {
                            peso++;
                          });
                        },
                        widgetIcon: Icons.add,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      roundIconButton(
                        onPressed: () => () {
                          setState(() {
                            peso--;
                          });
                        },
                        widgetIcon: Icons.remove,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomButton(
            widgetText: "Calcular",
            onTap: () => () {
              CalculatorBrain calc =
                  CalculatorBrain(height: altura, weight: peso);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return resultsPage(
                    bmi: calc.getBMI().toStringAsFixed(1),
                    resultado: calc.getResult(),
                    imagem: calc.getImage(calc.getBMI()),
                  );
                }),
              );
            },
          )
        ],
      ),
    );
  }
}
