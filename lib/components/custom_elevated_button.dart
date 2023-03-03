
import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  CustomElevatedButton(this.color, this.textColor,
      {required this.text,required this.onPressed, super.key});

  String text;
  Color color;
  Color textColor;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: color,
          padding: EdgeInsets.symmetric(
              horizontal: Size.width * .2, vertical: Size.height * .02)),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20, fontWeight: FontWeight.bold, color: textColor),
      ),
    );
  }
}
