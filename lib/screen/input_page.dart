import 'package:bmi_calc/calculator_brain.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calc/component/icon_content.dart';
import '../component/reusable_card.dart';
import 'package:bmi_calc/component/constants.dart';
import '../component/buttom_button.dart';
import 'package:bmi_calc/component/round_button.dart';


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender? selectedGender;
  int _height = 180;
  int _weight = 60;
  int age = 23;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR',),
        ),
        body: Column(
          children: [
            Expanded(
                child:Row(
                  children: [
                    Expanded(
                      child: ReusableCard(
                        colour: selectedGender==Gender.male?kActiveCardColor:kInactiveCardColor,
                        cardChild: IconContent(
                          icon: FontAwesomeIcons.mars,
                          label: 'Male',
                        ),
                        onPress: (){
                          setState(() {
                            selectedGender=Gender.male;
                          });
                        },
                      ),
                    ),
                    Expanded(
                      child: ReusableCard(
                          colour: selectedGender==Gender.female?kActiveCardColor:kInactiveCardColor,
                          cardChild: IconContent(
                            icon: FontAwesomeIcons.venus,
                            label: 'Female',
                          ),
                          onPress: (){
                            setState(() {
                              selectedGender=Gender.female;
                            });
                          }
                      ),
                    ),
                  ],
                )
            ),
            Expanded(
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Height',style: kLabelTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(_height.toString(),style: kNumberTextStyle,),
                        Text('cm',style: kLabelTextStyle,)
                      ],
                    ),
                    SliderTheme(
                      data: kSlider,
                      child: Slider(
                        value: _height.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newHeight){
                          setState(() {
                            _height= newHeight.round();
                          });
                        } ,
                      ),
                    )
                  ],
                ) ,
              ),
            ),
            Expanded(
                child: Row(
                  children: [
                    Expanded(
                        child: ReusableCard(
                          colour: kActiveCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'WEIGHT',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                _weight.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(
                                    icon:FontAwesomeIcons.minus,
                                    onPress: (){
                                      setState(() {
                                        _weight--;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  RoundButton(
                                    icon:FontAwesomeIcons.plus,
                                    onPress: (){
                                      setState(() {
                                        _weight++;
                                      });
                                    },
                                  ),

                                ],

                              )
                            ],
                          ),)),
                    Expanded(
                        child: ReusableCard(
                          colour: kActiveCardColor,
                          cardChild: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Age',
                                style: kLabelTextStyle,
                              ),
                              Text(
                                age.toString(),
                                style: kNumberTextStyle,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RoundButton(
                                    icon:FontAwesomeIcons.minus,
                                    onPress: (){
                                      setState(() {
                                        age--;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  RoundButton(
                                    icon:FontAwesomeIcons.plus,
                                    onPress: (){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                    ),
                  ],
                )
            ),
            ButtomButton(
              Title: 'CALCULATE YOUR BMI',
              onTap: (){
                CalculatorBrain calc = CalculatorBrain(height: _height, weight: _weight);
                Navigator.pushNamed(
                    context,
                    '/result',
                    arguments: calc,
                    );
              },
            )
          ],
        ));
  }
}






