import 'package:flutter/material.dart';
import 'package:morningstar_ui/components/app_btn.dart';
import 'package:morningstar_ui/components/app_text.dart';
import 'package:morningstar_ui/components/app_textformfield.dart';
import 'package:morningstar_ui/logic/validation/form_validator.dart';

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
  final _formKey = GlobalKey<FormState>();

  final TextEditingController fNameController = TextEditingController();
  final TextEditingController lNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController = TextEditingController();

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
                  child: AppTextFormField(
                      controller: fNameController,
                      validator: fv.validateName,
                      label: "First name",
                      obscureText: false),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: AppTextFormField(
                      controller: lNameController,
                      validator: fv.validateName,
                      label: "Last name",
                      obscureText: false),
                ),

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
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: AppTextFormField(
                      controller: confirmPasswordController,
                      validator: (value) => fv.validateConfirmPassword(passwordController.value.text, value),
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
      ),
    );
  }
}
