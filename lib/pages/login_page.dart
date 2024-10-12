import 'package:flutter/material.dart';
import 'package:morningstar_ui/components/app_btn.dart';
import 'package:morningstar_ui/components/app_textfield.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //logo
          children: [
            //Display message

            Text(
              "Travel reservations made super easy",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Helvetica",
                  color: Theme.of(context).colorScheme.primary),
            ),

            SizedBox(
              height: 20,
            ),

            Icon(
              Icons.person_2_sharp,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),

            SizedBox(
              height: 20,
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: AppTextField(
                  controller: emailController,
                  label: "Email or Phone",
                  obscureText: false),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: AppTextField(
                  controller: passwordController,
                  label: "Password",
                  obscureText: true),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: AppBtn(
                callback: () {},
                text: "Login",
              ),
            ),

            Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Not a user yet?",
                    style: TextStyle(
                        color: Colors.grey.shade900,
                        fontSize: 20))
            ),

            Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  child:Text("Sign in",
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                          fontSize: 20))
                )
            ),
          ],
        ),
      ),
    );
  }
}
