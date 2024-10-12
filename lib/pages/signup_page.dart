import 'package:flutter/material.dart';
import 'package:morningstar_ui/components/app_btn.dart';
import 'package:morningstar_ui/components/app_textfield.dart';

class SignupPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  SignupPage({super.key});

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

            SizedBox(height: 80),
            Text(
              "Travel reservations made super easy",
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: "Helvetica",
                  color: Theme.of(context).colorScheme.primary),
            ),

            SizedBox(
              height: 10,
            ),

            Icon(
              Icons.card_membership,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),

            SizedBox(
              height: 20,
            ),

            Expanded(child:
            ListView(
              children: [


            Padding(
              padding: const EdgeInsets.all(30.0),
              child: AppTextField(
                  controller: emailController,
                  label: "First name",
                  obscureText: false),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: AppTextField(
                  controller: emailController,
                  label: "Last name",
                  obscureText: false),
            ),

            Padding(
              padding: const EdgeInsets.all(30.0),
              child: AppTextField(
                  controller: emailController,
                  label: "Email address",
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
              padding: const EdgeInsets.all(30.0),
              child: AppTextField(
                  controller: passwordController,
                  label: "Confirm Password",
                  obscureText: true),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: AppBtn(
                callback: () {},
                text: "Register",
              ),
            ),

            Center(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Already a user?",
                      style: TextStyle(
                          color: Colors.grey.shade900,
                          fontSize: 20,))
              ),
            ),

            Center(
              child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: (){},
                      child:Text("Login",
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.primary,
                              fontSize: 20))
                  )
              ),
            ),
              ],
            ))
          ]
        ),
      ),
    );
  }
}
