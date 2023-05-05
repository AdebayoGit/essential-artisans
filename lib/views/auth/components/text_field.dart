import 'package:flutter/material.dart';

import '../../../utils/app_theme.dart';

/*class Button extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final Color color, textColor;
  const Button({
    Key? key,
    required this.title,
    required this.press,
    required this.color,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
            backgroundColor: color,
          ),
          onPressed: press,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Text(
              title,
              style: TextStyle(
                  color: textColor,
                  letterSpacing: 5,
                  wordSpacing: 3,
                  fontSize: 15,
                  fontWeight: FontWeight.w900
              ),
            ),
          ),
        ),
      ),
    );
  }
}*/

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: size.width * 0.8,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppTheme.primaryColor,
          ),
        ),
      ),
      child: child,
    );
  }
}

class AuthTextField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType textInputType;
  final String labelText, hintText;
  final validator;
  final FocusNode? focusNode;
  final bool autofocus;
  final IconData icon;


  const AuthTextField({
    Key? key,
    required this.controller,
    required this.textInputType,
    required this.labelText,
    required this.hintText,
    required this.validator,
    this.focusNode,
    this.autofocus = false,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: controller,
        validator: validator,
        focusNode: focusNode,
        autofocus: false,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: AppTheme.orange,
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: AppTheme.bodyMediumRegular.copyWith(color: AppTheme.white),
          border: const OutlineInputBorder(borderSide: BorderSide(color: AppTheme.orange)),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppTheme.orange)),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppTheme.orange)),
          focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
          prefixIcon: Icon(
            icon,
            color: AppTheme.orange,
          ),
          hintText: hintText,
        )
    );
  }
}

class PasswordTextField extends StatefulWidget {
  final String?Function(String?)? validator;
  final TextEditingController controller;
  const PasswordTextField({
    Key? key,
    required this.validator,
    required this.controller,
  }) : super(key: key);

  @override
  _PasswordTextFieldState createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool _obscureText = true;

  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        obscureText: _obscureText,
        validator: widget.validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        cursorColor: AppTheme.orange,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Password',
          labelStyle: AppTheme.bodyMediumRegular.copyWith(color: AppTheme.white),
          border: const OutlineInputBorder(borderSide: BorderSide(color: AppTheme.orange)),
          enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppTheme.orange)),
          focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: AppTheme.orange)),
          focusedErrorBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.deepOrange)),
          prefixIcon: const Icon(
            Icons.lock,
            color: AppTheme.orange,
          ),
          hintText: "Secrets",
          suffixIcon: IconButton(
            icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
            color: AppTheme.orange,
            onPressed: _toggle,
          ),
        ));
  }
}