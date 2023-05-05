import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_theme.dart';

class Button extends StatelessWidget {
  final String title;
  final VoidCallback press;
  final Color? color;
  final Color? textColor;
  const Button({
    Key? key,
    required this.title,
    required this.press,
    this.color = AppTheme.primaryColor,
    this.textColor = AppTheme.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.88,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 1.94.h, horizontal: 40),
            backgroundColor: color,
            shadowColor: const Color(0xFF246BFD).withOpacity(0.5),
            elevation: 10,
          ),
          onPressed: press,
          child: Text(title, style: AppTheme.bodyLargeBold.copyWith(color: textColor)),
        ),
      ),
    );
  }
}