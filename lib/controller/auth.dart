import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class AuthController extends GetxService {

  final RxBool isLogIn = false.obs;

  late final TextEditingController firstName, lastName, email, phone, address, password;

  final Uri _registrationUrl = Uri.parse('https://www.essentialartisans.ng/register');
  final Uri _passwordResetUrl = Uri.parse('https://www.essentialartisans.ng/forgetpassword');


  @override
  void onInit() {
    super.onInit();
    email = TextEditingController();
    password = TextEditingController();
  }

  Future<void> register() async {
    await launchUrl(_registrationUrl, mode: LaunchMode.externalApplication);
  }

  Future<void> reset() async {
    await launchUrl(_passwordResetUrl, mode: LaunchMode.externalApplication);
  }

}