import 'package:flutter/material.dart';
import 'package:bmi_calc/component/constants.dart';
class ButtomButton extends StatelessWidget {

  ButtomButton({required this.Title,required this.onTap});
  final String Title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10.0),
        height: kButtomContainerHeight,
        color: kButtonContainerColor,
        width: double.infinity,
        child: Text(
          Title,
          style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}