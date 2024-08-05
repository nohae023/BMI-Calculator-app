import 'package:flutter/material.dart';
import 'package:flutter_application_5/bmi_calculate.dart';
import 'package:flutter_application_5/components/gender_column.dart';
import 'package:flutter_application_5/main.dart';
import 'package:flutter_application_5/components/pink_button.dart';
import 'package:flutter_application_5/components/reusable_container.dart';
import 'package:flutter_application_5/components/rounded_button.dart';
import 'package:flutter_application_5/screens/result_screen.dart';
import 'package:flutter_application_5/utlis/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Gender? SelectedGender;
  double height = 180;
  int weight = 60;
  int age = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI CALCULATOR",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.male;
                      });
                    },
                    child: ReusableContainer(
                      myColor: SelectedGender == Gender.male
                          ? activeColor
                          : inActiveColor,
                      myChild: GenderColumn(
                        title: "MALE",
                        icon: Icons.male,
                        // icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        SelectedGender = Gender.female;
                      });
                    },
                    child: ReusableContainer(
                      myColor: SelectedGender == Gender.female
                          ? activeColor
                          : inActiveColor,
                      myChild: GenderColumn(
                        title: "FEMALE",
                        icon: Icons.female,
                        // icon: FontAwesomeIcons.venus,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableContainer(
              myColor: inActiveColor,
              myChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HIGHT",
                    style: titleStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "${height.toInt()}",
                        style: TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Cm",
                        style: titleStyle,
                      ),
                    ],
                  ),
                  Slider(
                    value: height,
                    onChanged: (newValue) {
                      setState(() {
                        height = newValue;
                      });
                    },
                    min: 120,
                    max: 220,
                    thumbColor: pinkColor,
                    activeColor: pinkColor,
                    inactiveColor: Color(0xff464758),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableContainer(
                    myColor: inActiveColor,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "WEIGHT",
                          style: titleStyle,
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              OnPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            RoundedButton(
                              OnPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableContainer(
                    myColor: inActiveColor,
                    myChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "AGE",
                          style: titleStyle,
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                            fontSize: 64,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundedButton(
                              OnPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                            RoundedButton(
                              OnPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          PinkButton(
            title: "CALCULATE YOUR BMI",
            onTap: () {
              BmiCalculate bmiCalculate =
                  BmiCalculate(weight: weight, height: height);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ResultScreen(
                      title: bmiCalculate.getTitleText(),
                      description: bmiCalculate.getDescribtion(),
                      bmiResult: bmiCalculate.Calculate(),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
