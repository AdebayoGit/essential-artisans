import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Map<int, Color> primarySwatch = {
    50: Color.fromRGBO(3, 61, 148, .1),
    100: Color.fromRGBO(3, 61, 148, .2),
    200: Color.fromRGBO(3, 61, 148, .3),
    300: Color.fromRGBO(3, 61, 148, .4),
    400: Color.fromRGBO(3, 61, 148, .5),
    500: Color.fromRGBO(3, 61, 148, .6),
    600: Color.fromRGBO(3, 61, 148, .7),
    700: Color.fromRGBO(3, 61, 148, .8),
    800: Color.fromRGBO(3, 61, 148, .9),
    900: Color.fromRGBO(3, 61, 148, 1),
  };

  // Primary Colors
  static const Color primaryColor = Color(0xFF033d94);
  static const Color primaryColor0 = Color(0xFF246BFD);
  static const Color primaryColor1 = Color(0xFF5089FD);
  static const Color primaryColor2 = Color(0xFF7CA6FE);
  static const Color primaryColor3 = Color(0xFFA7C4FE);
  static const Color primaryColor4 = Color(0xFFE9F0FF);


  // Secondary Colors
  static const Color secondaryColor = Color(0xFFFFD300);
  static const Color secondaryColor1 = Color(0xFFFFDC33);
  static const Color secondaryColor2 = Color(0xFFFFE566);
  static const Color secondaryColor3 = Color(0xFFFFED99);
  static const Color secondaryColor4 = Color(0xFFFFFBE6);

  // Alert Colors
  static const Color alertSuccess = Color(0xFF4ADE80);
  static const Color alertInfo = Color(0xFF246BFD);
  static const Color alertWarning = Color(0xFFFACC15);
  static const Color alertError = Color(0xFFF75555);
  static const Color alertDisabled = Color(0xFFD8D8D8);
  static const Color alertDisButton = Color(0xFF476EBE);

  // GreyScale
  static const MaterialColor greyScale = MaterialColor(0xFF212121, {
    900: Color(0xFF212121),
    800: Color(0xFF424242),
    700: Color(0xFF616161),
    600: Color(0xFF757575),
    500: Color(0xFF9E9E9E),
    400: Color(0xFFBDBDBD),
    300: Color(0xFFE0E0E0),
    200: Color(0xFFEEEEEE),
    100: Color(0xFFF5F5F5),
    50: Color(0xFFFAFAFA),
  });

  // Gradients
  static const LinearGradient gradientBlue = LinearGradient(
    colors: [
      Color(0xFF6F9EFF),
      Color(0xFF246BFD),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
  );
  static const LinearGradient gradientSunSetOrange = LinearGradient(
    colors: [
      Color(0xFFFF8285),
      Color(0xFFFF575C),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
  );
  static const LinearGradient gradientPurple = LinearGradient(
    colors: [
      Color(0xFF896BFF),
      Color(0xFF6842FF),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
  );
  static const LinearGradient gradientGreen = LinearGradient(
    colors: [
      Color(0xFF39E180),
      Color(0xFF1AB65C),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
  );
  static const LinearGradient gradientYellow = LinearGradient(
    colors: [
      Color(0xFFFFE580),
      Color(0xFFFACC15),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    stops: [0, 1],
  );

  // Dark Colors
  static const Color darkest = Color(0xFF181A20);
  static const Color darker = Color(0xFF1F222A);
  static const Color dark = Color(0xFF35383F);

  // General Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color red = Color(0xFFF54336);
  static const Color pink = Color(0xFFE91E63);
  static const Color purple = Color(0xFF9C27B0);
  static const Color deepPurple = Color(0xFF673AB7);
  static const Color indigo = Color(0xFF3F51B5);
  static const Color blue = Color(0xFF2196F3);
  static const Color lightBlue = Color(0xFF03A9F4);
  static const Color cyan = Color(0xFF00BCD4);
  static const Color teal = Color(0xFF009688);
  static const Color green = Color(0xFF4CAF50);
  static const Color lightGreen = Color(0xFF8BC34A);
  static const Color lime = Color(0xFFCDDC39);
  static const Color yellow = Color(0xFFFFEB3B);
  static const Color amber = Color(0xFFFFC107);
  static const Color orange = Color(0xFFFF9800);
  static const Color deepOrange = Color(0xFFFF5722);
  static const Color brown = Color(0xFF795548);
  static const Color blueGrey = Color(0xFF607D8B);
  static const Color fieldIconColor = Color(0xFF130F26);

  // Background Colors
  static const Color backgroundGreen = Color(0xFFF7FFFA);
  static const Color backgroundBlue = Color(0xFFF6FAFD);
  static const Color backgroundPink = Color(0xFFFFF5F5);
  static const Color backgroundYellow = Color(0xFFFFFEE0);
  static const Color backgroundPurple = Color(0xFFFCF4FF);

  // Fonts
  static const String fontName = 'Urbanist';

  // Headings
  static const TextStyle h1 = TextStyle( // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 48,
    letterSpacing: 0.4,
    height: 1.1,
    color: Color(0xFF212121),
  );

  static const TextStyle h2 = TextStyle( // h4 -> display1
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 40,
    letterSpacing: 0.4,
    height: 1.1,
    color: Color(0xFF212121),
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 32,
    height: 1.1,
    color: Color(0xFF212121),
  );

  static const TextStyle h4 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 24,
    letterSpacing: 0.4,
    height: 1.2,
    color: Color(0xFF212121),
  );

  static const TextStyle h5 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    letterSpacing: 0.4,
    height: 1.2,
    color: Color(0xFF212121),
  );

  static const TextStyle h6 = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 1.2,
    color: Color(0xFF212121),
  );


  // Body - XLarge
  static const TextStyle bodyXLargeBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 18,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyXLargeSemiBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 18,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyXLargeMedium = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 18,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyXLargeRegular = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 18,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  // Body - Large

  static const TextStyle bodyLargeBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyLargeSemiBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 16,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyLargeMedium = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 16,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyLargeRegular = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 16,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  // Body - Medium

  static const TextStyle bodyMediumBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyMediumSemiBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 14,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyMediumMedium = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 14,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyMediumRegular = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 14,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  // Body - Small

  static const TextStyle bodySmallBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 12,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodySmallSemiBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodySmallMedium = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 12,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodySmallRegular = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 12,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  // Body - XSmall

  static const TextStyle bodyXSmallBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w700,
    fontSize: 10,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyXSmallSemiBold = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w600,
    fontSize: 10,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyXSmallMedium = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w500,
    fontSize: 10,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );

  static const TextStyle bodyXSmallRegular = TextStyle(
    fontFamily: fontName,
    fontWeight: FontWeight.w400,
    fontSize: 10,
    height: 1.4,
    color: Color(0xFFBDBDBD),
  );


  static const TextTheme textTheme = TextTheme(
    headline1: h1,
    headline2: h2,
    headline3: h3,
    headline4: h4,
    headline5: h5,
    headline6: h6,
  );

}
