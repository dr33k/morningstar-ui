import 'package:flutter/foundation.dart';

final class FormValidator {
  final _nameRegex =  RegExp(r'^[A-Za-z]{2,100}$');
  final _emailRegex =  RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  final _passwordRegex =  RegExp(r'^(.{0,7}|[^A-Z]*|[^a-z]*|[^0-9]*|[a-zA-Z0-9]*)$'); //Inverse matching

  FormValidator();

  String? validateName(String? name){
    if (name == null || name.isEmpty) return 'Name cannot be empty';
    if(!_nameRegex.hasMatch(name)) return 'Please only enter at least two letters';

    return null;
  }

  String? validateEmail(String? email){
    if (email == null || email.isEmpty) return 'Email cannot be empty';
    if(!_emailRegex.hasMatch(email)) return 'Incorrect email format';

    return null;
  }

  String? validatePassword(String? email){
    if (email == null || email.isEmpty) return 'Password cannot be empty';
    if(_passwordRegex.hasMatch(email)) {
      return
      'Password must:'
          '\n Be at least 8 characters long'
          '\n At least one capital letter'
          '\n at least one small letter'
          '\n At least one number'
          '\n At least one special character';
    }

    return null;
  }

  String? validateConfirmPassword(String? password1, String? password2){
    if (password1 != password2) return 'Passwords must be the same';
    return null;
  }

}
