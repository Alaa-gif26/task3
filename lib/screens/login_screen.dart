import 'package:flutter/material.dart';
import 'package:task_3/components/custom_clipper.dart';
import 'package:task_3/components/custom_elevated_button.dart';
import 'package:task_3/screens/animated_List_screen.dart';
import 'package:task_3/screens/register_screen.dart';

import '../components/text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
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
                      "Login",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: Size.height / 10,
              ),
              CustomTextFormField(
                labelText: "Email",
                prefixIcon: Icons.email,
                hintText: 'example@gmail.com',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Your Name";
                  } else if (emailController.text.contains("@") == false ||
                      emailController.text.contains(".") == false) {
                    return "Please Enter a valid Email";
                  }
                },
                controller: emailController,
                 textInputType: TextInputType.emailAddress,
              ),
              CustomTextFormField(obsecureText: true, suffixIcon: Icons.visibility,
                textInputType: TextInputType.visiblePassword,
                labelText: "Password",
                prefixIcon: Icons.lock,
                hintText: '........',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter Your Password";
                  } else if (value.length < 8) {
                    return "Password must be at leat 8 characters";
                  }
                },
                controller: passwordController,
              ),
              SizedBox(
                height: Size.height / 20,
              ),
              CustomElevatedButton(
                Colors.purple,
                Colors.white,
                text: "Login",
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return AnimatedListScreen();
                    }));
                  }
                },
              ),
              SizedBox(
                height: Size.height / 50,
              ),
              CustomElevatedButton(
                Colors.white,
               Colors.purple,
                text: "Register",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return RegisterScreen();
                  }));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
