import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reuseable_card.dart';
import 'icon_content.dart';
import 'contants.dart';

enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;
  int height = kMinHeight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI calculator'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      color: selectedGender == Gender.male
                          ? kActiveReuseableColor
                          : kInActiveReuseableColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      onPress: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      color: selectedGender == Gender.female
                          ? kActiveReuseableColor
                          : kInActiveReuseableColor,
                      cardChild: IconContent(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReuseableCard(
                color: kActiveReuseableColor,
                cardChild: ReuseableInput(
                  label: 'HEIGTH',
                  value: height.toString(),
                  unit: 'CM.',
                  inputChild: Slider(
                    min: kMinHeight.toDouble(),
                    max: kMaxHeight.toDouble(),
                    activeColor: Color(0xFFFFFFFF),
                    inactiveColor: Color(0xFF888993),
                    value: height.toDouble(),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: ReuseableCard(
                      color: kActiveReuseableColor,
                      cardChild: ReuseableInput(
                        label: 'WEIGHT',
                        value: '72',
                        unit: 'KG.',
                        inputChild: Text('eiei'),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: ReuseableCard(
                      color: kActiveReuseableColor,
                      cardChild: ReuseableInput(
                        label: 'AGE',
                        value: '24',
                        unit: '',
                        inputChild: Text('eiei'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 80,
              color: Colors.red,
              width: double.infinity,
              child: Center(
                child: Text(
                  'Calutator Your BMI.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ReuseableInput extends StatelessWidget {
  ReuseableInput({this.label, this.unit, this.value, this.inputChild});

  final String value;
  final String label;
  final String unit;
  final Widget inputChild;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          label,
          style: kTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              value,
              style: kTextNumberStyle,
            ),
            SizedBox(
              width: 3,
            ),
            Text(
              unit,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
        inputChild
      ],
    );
  }
}
