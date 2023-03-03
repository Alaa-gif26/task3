import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:task_3/components/custom_clipper.dart';
import 'package:task_3/components/custom_elevated_button.dart';
import 'package:task_3/screens/flutter_map.dart';
import 'package:task_3/screens/register_screen.dart';

import '../components/text_form_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size = MediaQuery.of(context).size;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: Colors.purple,
                height: Size.height/3,
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            ),
             SizedBox(
              height:Size.height/10,
            ),
          
            CustomTextFormField(
                textInputType: TextInputType.emailAddress,
                labelText: "Email",
                prefixIcon: Icons.email, hintText: 'example@gmail.com',),
            CustomTextFormField(
                obsecureText: true,
                textInputType: TextInputType.visiblePassword,
                labelText: "Password",
                prefixIcon: Icons.lock, hintText: '........',),
            
                
             SizedBox(
              height: Size.height/20,
            ),
         CustomElevatedButton(Colors.purple, Colors.white, text: "Login", onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const FlutterMap();
                      }));
                    },),
             SizedBox(
              height: Size.height/50,
            ),
            CustomElevatedButton(Colors.white, Colors.purple, text: "Register", onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegisterScreen();
                      }));
                    },)
            
          ],
        ),
      ),
    );
  }
}
