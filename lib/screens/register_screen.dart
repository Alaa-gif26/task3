import 'package:flutter/material.dart';
import 'package:task_3/components/custom_clipper.dart';
import 'package:task_3/components/text_form_field.dart';
import 'package:task_3/screens/animated_List_screen.dart';
import 'package:task_3/screens/login_screen.dart';

import '../components/custom_elevated_button.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final phoneController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  color: Colors.purple,
                  height: Size.height / 5,
                  child: const Center(
                    child: Text(
                      "Register",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(height: Size.height / 20),
              CustomTextFormField(
                textInputType: TextInputType.name,
                labelText: "Full Name",
                prefixIcon: Icons.person,
                hintText: 'Alaa Mohamed',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter your Name";
                  }
                },
                controller: nameController,
              ),
              CustomTextFormField(
                  labelText: "Email",
                  prefixIcon: Icons.email,
                  hintText: 'example@gmail.com',
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please Enter Your Email";
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
              CustomTextFormField(obsecureText: true,suffixIcon: Icons.visibility,
                textInputType: TextInputType.visiblePassword,
                labelText: "Confirm Password",
                prefixIcon: Icons.lock,
                hintText: '........',
                controller: confirmPasswordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Confirm Your Password";
                  }
                },
              ),
              CustomTextFormField(
                textInputType: TextInputType.phone,
                labelText: "Phone Number",
                prefixIcon: Icons.phone,
                hintText: '010000000000',
                controller: phoneController, validator: (value) {
                  if (value!.isEmpty) {
                    return "Please Enter your Phone";
                  }
                },
              ),
              SizedBox(
                height: Size.height / 60,
              ),
              CustomElevatedButton(
                Colors.purple,
                Colors.white,
                text: "Register",
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
                text: "Login",
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const LoginScreen();
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
