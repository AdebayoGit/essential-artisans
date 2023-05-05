import 'package:essential_artisans/controller/auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_theme.dart';
import '../../utils/validators.dart';
import '../components/button.dart';
import 'components/text_field.dart';

class AuthPage extends GetView<AuthController> {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ShaderMask(
            shaderCallback: (rect) => const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black, Colors.transparent],
            ).createShader(rect),
            blendMode: BlendMode.darken,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.6.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Flexible(
                  child: RichText(
                    text: TextSpan(
                      text: 'E',
                      style: AppTheme.h1.copyWith(
                          foreground: Paint()
                            ..style = PaintingStyle.fill
                            ..strokeWidth = 1
                            ..color = AppTheme.orange
                          //..shader = ,
                          ),
                      children: [
                        TextSpan(
                          text: 'ssential',
                          style: AppTheme.h3.copyWith(
                            foreground: Paint()
                              ..style = PaintingStyle.fill
                              ..strokeWidth = 1
                              ..color = AppTheme.greyScale[800]!,
                          ),
                        ),
                        TextSpan(
                          text: ' A',
                          style: AppTheme.h1.copyWith(
                            fontWeight: FontWeight.w900,
                            foreground: Paint()
                              ..style = PaintingStyle.stroke
                              ..strokeWidth = 1
                              ..color = AppTheme.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: 'rtisans',
                          style: AppTheme.h3.copyWith(
                            foreground: Paint()
                              ..style = PaintingStyle.fill
                              ..strokeWidth = 1
                              ..color = AppTheme.greyScale[800]!,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 2.59.h),
                AuthTextField(
                  controller: controller.email,
                  textInputType: TextInputType.emailAddress,
                  labelText: 'Email',
                  hintText: 'johndoe@gmail.com',
                  validator: Validator.email,
                  icon: Icons.mail_outline,
                ),
                SizedBox(height: 2.59.h),
                PasswordTextField(
                  validator: Validator.password,
                  controller: controller.password,
                ),
                SizedBox(height: 2.59.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 2.h),
                    child: Button(
                      title: 'Proceed',
                      press: () {
                        //controller.signIn();
                      },
                      color: Colors.orange,
                    ),
                  ),
                ),
                Center(
                  child: TextButton(
                    onPressed: () {
                      controller.reset();
                    },
                    child: Text(
                      'Reset Login Pin?',
                      style: AppTheme.bodyLargeSemiBold.copyWith(color: AppTheme.primaryColor1),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "Don’t have an Account ?",
                      style: AppTheme.bodyMediumRegular
                    ),
                    TextButton(
                      onPressed: () {
                        controller.register();
                      },
                      child: Text(
                        "Sign up",
                        style: AppTheme.bodyMediumRegular.copyWith(color: AppTheme.primaryColor1),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
