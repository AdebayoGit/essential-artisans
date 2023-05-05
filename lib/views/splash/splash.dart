import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../utils/app_theme.dart';
import '../components/fade_in.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RichText(
              text: TextSpan(
                text: 'E',
                style: AppTheme.h1.copyWith(
                    fontWeight: FontWeight.w900,
                    foreground: Paint()
                      ..style = PaintingStyle.fill
                      ..strokeWidth = 1
                      ..color = AppTheme.orange),
                children: [
                  TextSpan(
                    text: 'A',
                    style: AppTheme.h1.copyWith(
                      fontWeight: FontWeight.w900,
                      foreground: Paint()
                        ..style = PaintingStyle.fill
                        ..strokeWidth = 1
                        ..color = AppTheme.primaryColor,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeIn(
                  2,
                  Text(
                    'E',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  2.5,
                  Text(
                    'S',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  3,
                  Text(
                    'S',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  3.5,
                  Text(
                    'E',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  4,
                  Text(
                    'N',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  4.5,
                  Text(
                    'T',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  5,
                  Text(
                    'I',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  5.5,
                  Text(
                    'A',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  6,
                  Text(
                    'L',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                SizedBox(width: 1.w),
                FadeIn(
                  2,
                  Text(
                    'A',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  2.5,
                  Text(
                    'R',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  3,
                  Text(
                    'T',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  3.5,
                  Text(
                    'I',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  4,
                  Text(
                    'S',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  4.5,
                  Text(
                    'A',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  5,
                  Text(
                    'N',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
                FadeIn(
                  5.5,
                  Text(
                    'S',
                    style: AppTheme.bodyLargeBold
                        .copyWith(color: AppTheme.greyScale[900]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/*
[
FadeIn(1.0, FlutterLogo()),
Row(
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
children: <Widget>[
FadeIn(2, FlutterLogo()),
FadeIn(2.33, FlutterLogo()),
FadeIn(2.66, FlutterLogo())
],
),
FadeIn(4, FlutterLogo()),
FadeIn(4.5, FlutterLogo()),
FadeIn(5, FlutterLogo()),
FadeIn(5.5, FlutterLogo())
]*/
