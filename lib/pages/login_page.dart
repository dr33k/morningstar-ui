import 'package:flutter/material.dart';
import 'package:morningstar_ui/components/app_btn.dart';
import 'package:morningstar_ui/components/app_text.dart';
import 'package:morningstar_ui/components/app_textfield.dart';

class LoginPage extends StatefulWidget{
  final Function()? onTap;

  const LoginPage({
    super.key,
    required this.onTap
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  _LoginPageState();

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
              const SizedBox(height: 80),

              const AppTextPM(text: "MORNINGSTAR"),

              Icon(
                Icons.person_2_sharp,
                size: 100,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 20),

              //Display message
              const AppTextPS(text: "Welcome Back"),

              const SizedBox(height: 20),

              Expanded(child: ListView(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                children: [
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
                    padding: const EdgeInsets.all(10),
                    child: AppBtn(
                      callback: (){},
                      text: "Login",
                    ),
                  ),

                  const Center(
                    child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: AppTextNS(text: "Not a User yet ?")
                    ),
                  ),

                  Center(
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: GestureDetector(
                          onTap: widget.onTap,
                          child:Text("Sign up",
                              style: TextStyle(
                                  color: Theme.of(context).colorScheme.primary,
                                  fontSize: 15))
                        )
                    ),
                  ),
                ],
              )
              )
            ],
          ),
        ),
      ),
    );
  }
}
