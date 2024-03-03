import 'package:bmi_calc/calculator_brain.dart';
import 'package:bmi_calc/component/constants.dart';
import 'package:bmi_calc/component/buttom_button.dart';
import 'package:bmi_calc/component/reusable_card.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {


  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {

  @override
  Widget build(BuildContext context) {
    final CalculatorBrain calc =
    ModalRoute.of(context)!.settings.arguments as CalculatorBrain;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.all(15.0),
                alignment: Alignment.bottomLeft,
                child: Text(
                    'Your Result',
                    style: kTitleResult
                ),
              )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.all(15.0),
                      child: Text(calc.GetResult().toUpperCase(),style: kTypeBmi)
                  ),
                  Text(calc.BMICalculator(),style: kBmiText),
                  Text(calc.getInterpretation(),style: kBmiBody,textAlign: TextAlign.center,),
                ],
              ),
            )
          ),
          ButtomButton(
              Title: 'RECALCULATE',
              onTap: (){
                Navigator.pop(context);

              }
          )
        ],
      ) ,
    );
  }
}
