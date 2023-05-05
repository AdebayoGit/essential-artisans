import 'package:get/get.dart';

class Validator {
  static String? username(String? username) {
    if (username!.isEmpty) {
      return 'Username is required';
    } else if (username.length < 8) {
      return 'Username should be eight characters or more';
    }
    return null;
  }

  static String? email(String? email) {
    if(GetUtils.isNull(email) || email!.isEmpty){
      return 'Email is required';
    } else if (!GetUtils.isEmail(email)) {
      return 'Please provide a valid email address';
    }
    return null;
  }

  static String? phone(String? phone) {
    if (phone!.isEmpty) {
      return 'Phone number is required';
    }
    return null;
  }

  static String? password(String? password) {
    if (GetUtils.isNull(password) || password!.isEmpty) {
      return 'Password is required';
    } else if (password.length < 6){
      return 'Password must be six characters';
    } else if (GetUtils.isAlphabetOnly(password)){
      return 'Password must contain at least 1 digit';
    }
    return null;
  }

  static String? passwordCheck(String? password, String? check) {
    if (GetUtils.isNull(password) || password!.isEmpty) {
      return 'Password is required';
    } else if (password != check) {
      return 'Password must be same as above';
    }
    return null;
  }

  static String? amount(String? amount) {
    if (GetUtils.isNull(amount) || amount!.isEmpty) {
      return 'Please input an amount';
    } else if (GetUtils.isNumericOnly(amount)) {
      return 'Amount must be above 100';
    }
    return null;
  }
}
