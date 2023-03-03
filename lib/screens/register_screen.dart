import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_3/components/custom_clipper.dart';
import 'package:task_3/components/text_form_field.dart';
import 'package:task_3/screens/flutter_map.dart';
import 'package:task_3/screens/login_screen.dart';

import '../components/custom_elevated_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: Colors.purple,
                height: Size.height / 3,
                child: const Center(
                  child: Text(
                    "Register",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            CustomTextFormField(
              textInputType: TextInputType.name,
              labelText: "Full Name",
              prefixIcon: Icons.person,
              hintText: 'Alaa Mohamed',
            ),
            CustomTextFormField(
              textInputType: TextInputType.emailAddress,
              labelText: "Email",
              prefixIcon: Icons.email,
              hintText: 'example@gmail.com',
            ),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              labelText: "Password",
              prefixIcon: Icons.lock,
              hintText: '........',
            ),
            CustomTextFormField(
              textInputType: TextInputType.visiblePassword,
              labelText: "Confirm Password",
              prefixIcon: Icons.lock,
              hintText: '........',
            ),
            CustomTextFormField(
              textInputType: TextInputType.phone,
              labelText: "Phone Number",
              prefixIcon: Icons.phone,
              hintText: '010000000000',
            ),
            const SizedBox(
              height: 10,
            ),
            CustomElevatedButton(Colors.white, Colors.purple, text: "Register", onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                    return const FlutterMap();
                  }));
                },)],
        ),
      ),
    );
  }
}
