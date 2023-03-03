import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
    {this.suffixIcon,this.obsecureText=false,
    required this.textInputType,
    required this.hintText,
    required this.labelText,
    required this.prefixIcon,
    required this.validator,
    required this.controller,
  });

  TextInputType textInputType;
  String labelText;
  String hintText;
  IconData prefixIcon;
  bool obsecureText;
  IconData? suffixIcon;
  TextEditingController controller;
  String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(obscureText: obsecureText,
        controller: controller,
        validator: validator,
        keyboardType: textInputType,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            prefixIcon: Icon(prefixIcon),
            suffixIcon: Icon(suffixIcon),
            enabledBorder: const OutlineInputBorder(),
            border: const OutlineInputBorder()),
      ),
    );
  }
}
