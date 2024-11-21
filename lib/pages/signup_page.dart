import 'package:flutter/material.dart';
import 'package:morningstar_ui/components/app_btn.dart';
import 'package:morningstar_ui/components/app_text.dart';
import 'package:morningstar_ui/components/app_textfield.dart';

class SignupPage extends StatefulWidget{
  final Function()? onTap;

   const SignupPage({
     super.key,
     required this.onTap
   });

   @override
   State<SignupPage> createState()=> _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            //logo
            children: [
              //Display message

              const SizedBox(height: 80),

              const AppTitlePS(text: "MORNINGSTAR"),

              Icon(
                Icons.card_membership,
                size: 100,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 20),

              const AppTextNS(text: "Travel reservations made super easy"),

              const SizedBox(height: 20),

              Expanded(
                  child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: AppTextField(
                    controller: emailController,
                    label: "First name",
                    obscureText: false),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: AppTextField(
                    controller: emailController,
                    label: "Last name",
                    obscureText: false),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: AppTextField(
                    controller: emailController,
                    label: "Email address",
                    obscureText: false),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: AppTextField(
                    controller: passwordController,
                    label: "Password",
                    obscureText: true),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: AppTextField(
                    controller: passwordController,
                    label: "Confirm Password",
                    obscureText: true),
              ),

              Padding(
                padding: const EdgeInsets.all(10.0),
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
                            fontSize: 15,))
                ),
              ),

              Center(
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: GestureDetector(
                      onTap: widget.onTap,
                        child:const AppTextPS(text: "Login")
                    )
                ),
              ),
                ],
              ))
            ]
          ),
        ),
      ),
    );
  }
}
