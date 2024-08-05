import 'package:flutter/material.dart';
import 'package:flutter_application_5/components/pink_button.dart';
import 'package:flutter_application_5/components/reusable_container.dart';
import 'package:flutter_application_5/utlis/constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen(
      {super.key,
      required this.title,
      required this.bmiResult,
      required this.description});
  final String title;
  final double bmiResult;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI CALCULATOR"),
        backgroundColor: Color(0xff0a0d23),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              "YOUR RESULT",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: ReusableContainer(
              myColor: activeColor,
              myChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    bmiResult.toStringAsFixed(1),
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Normal BMI Range:",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff8d92a6),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "18.5 - 25 kg/m2",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      description,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          PinkButton(
            title: "RE-CALCULATE YOUR BMI",
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
