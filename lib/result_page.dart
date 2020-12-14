import 'package:bmi_calculator/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'contants.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiScore, this.resultTitle, this.resultDescription});

  final String bmiScore;
  final String resultTitle;
  final String resultDescription;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
              ),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTextLargeStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Color(0xFF1D1F33),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      resultTitle,
                      style: kTexteResultTitleStyle,
                    ),
                    SizedBox(height: 20),
                    Text(
                      bmiScore,
                      style: kTexteResultNumberStyle,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Normal BMI range',
                      style: kTexteResulTitletDescriptionStyle,
                    ),
                    SizedBox(height: 10),
                    Text(
                      '18.5 - 24 kg/m2',
                      style: kTexteResultDescriptionStyle,
                    ),
                    SizedBox(height: 40),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: Text(
                        resultDescription,
                        style: kTexteResultDescriptionStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE YOUR BMI',
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
