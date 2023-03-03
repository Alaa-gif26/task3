import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {this.suffixIcon = Icons.visibility,this.obsecureText=false,
      required this.textInputType,
      required this.hintText,
      required this.labelText,
      required this.prefixIcon,
      super.key});

  TextInputType textInputType;
  String labelText;
  String hintText;
  IconData prefixIcon;
  IconData suffixIcon;
  bool obsecureText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        keyboardType: textInputType,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            prefixIcon: Icon(prefixIcon),
            suffixIcon: Icon(suffixIcon),
            enabledBorder: OutlineInputBorder(),
            border: OutlineInputBorder()),
      ),
    );
  }
}
