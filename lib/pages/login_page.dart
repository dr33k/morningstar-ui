import 'package:flutter/material.dart';
import 'package:morningstar_ui/components/app_btn.dart';
import 'package:morningstar_ui/components/app_text.dart';
import 'package:morningstar_ui/components/app_textformfield.dart';
import 'package:morningstar_ui/logic/validation/form_validator.dart';

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
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FormValidator fv = FormValidator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //logo
              children: [
                const SizedBox(height: 80),

                const AppTitlePS(text: "MORNINGSTAR"),

                Icon(
                  Icons.person_2_sharp,
                  size: 100,
                  color: Theme.of(context).colorScheme.primary,
                ),

                const SizedBox(height: 20),

                //Display message
                const AppTextNS(text: "Welcome Back"),

                const SizedBox(height: 20),

                Expanded(child: ListView(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: AppTextFormField(
                          controller: emailController,
                          validator: fv.validateEmail,
                          label: "Email address",
                          obscureText: false),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: AppTextFormField(
                          controller: passwordController,
                          validator: fv.validatePassword,
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
                            child:const AppTextPS(text: "Sign up")
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
      ),
    );
  }
}
