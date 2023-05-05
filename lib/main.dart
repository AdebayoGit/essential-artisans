import 'package:essential_artisans/utils/app_theme.dart';
import 'package:essential_artisans/views/onboarding/onboarding.dart';
import 'package:essential_artisans/views/splash/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'bindings/initial_binding.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final assetBundle = rootBundle;
  await assetBundle.load('assets/images/bg.jpg');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        title: 'Essential Artisans',
        debugShowCheckedModeBanner: false,
        defaultTransition: Transition.rightToLeftWithFade,
        home: const SplashScreen(),
        color: AppTheme.white,
        theme: ThemeData(
          primarySwatch: const MaterialColor(0xFF246BFD, AppTheme.primarySwatch),
        ),
        initialBinding: InitialBinding(),
        onReady: () {
          Future.delayed(5.seconds, () => Get.to(() => const OnBoardingPage(), transition: Transition.rightToLeftWithFade, duration: 1.seconds));
        },
      ),
    );
  }
}


