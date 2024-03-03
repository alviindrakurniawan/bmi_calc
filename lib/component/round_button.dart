import 'package:flutter/material.dart';


class RoundButton extends StatelessWidget {

  RoundButton({required this.icon,required this.onPress});

  final IconData icon;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      shape: CircleBorder(),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      constraints: BoxConstraints.tightFor(
        width: 56.0 ,
        height: 56.0,
      ),
      child: Icon(icon),



    );
  }
}