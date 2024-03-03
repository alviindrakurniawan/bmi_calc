import 'package:flutter/material.dart';


const kButtomContainerHeight = 80.0;
const kActiveCardColor = Color(0xFF1D1E33);
const kInactiveCardColor = Color(0xFF111328);
const kButtonContainerColor = Colors.pink;
enum Gender {male, female }

const kLabelTextStyle = TextStyle(
  color: Colors.white70,
  fontSize: 18,
);

const kNumberTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const kTitleResult = TextStyle(
  color: Colors.white,
  fontSize: 50.0,
  fontWeight: FontWeight.bold
);
const kTypeBmi = TextStyle(
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
  color: Colors.green
);
const kBmiText = TextStyle(
  fontSize: 80.0,
  fontWeight: FontWeight.bold
);
const kBmiBody = TextStyle(

  fontSize: 22.0,
  color: Colors.white,
);

SliderThemeData kSlider = SliderThemeData(
  activeTrackColor: Colors.white,
  inactiveTrackColor: Colors.grey,
  thumbColor: Colors.pink,
  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
  overlayColor: Colors.pink.withOpacity(0.29),
);



