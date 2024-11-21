import 'package:flutter/cupertino.dart';
import 'package:morningstar_ui/pages/login_page.dart';
import 'package:morningstar_ui/pages/signup_page.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool isLoginPage = true;

  void toggleAuthPages(){
    setState(() {
      isLoginPage = !isLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(isLoginPage) {
      return LoginPage(onTap: toggleAuthPages);
    } else {
      return SignupPage(onTap: toggleAuthPages);
    }
  }
}
