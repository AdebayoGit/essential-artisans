import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../utils/app_theme.dart';
import '../auth/auth_main.dart';
import '../components/button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> with SingleTickerProviderStateMixin {
  late PageController _controller;

  final List<String> captions = <String>[
    'Find the best artisans in your area, from our carefully curated database of field experts.',
    'Get the best rates without leaving the comfort of home.',
    'Tune in for the most amazing experience with us, get started today!',
  ];

  int currentPage = 0;

  @override
  void initState() {
    _controller = PageController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 15.h, left: 24, right: 24),
            height: 35.h,
            alignment: Alignment.topCenter,
            child: PageView(
              controller: _controller,
              onPageChanged: (int? newPage) {
                currentPage = newPage!;
                setState(() {

                });
              },
              children: [
                Image.asset(
                  "assets/images/onboarding_img0.png",
                  width: 80.3.w,
                  height: 25.15.h,
                ),
                Image.asset(
                  "assets/images/onboarding_img1.png",
                  width: 80.3.w,
                  height: 25.15.h,
                ),
                Image.asset(
                  "assets/images/onboarding_img2.png",
                  width: 80.3.w,
                  height: 25.15.h,
                ),
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5.6.w).copyWith(top: 10.h),
                height: 15.h,
                child: Text(
                  captions[currentPage],
                  textAlign: TextAlign.center,
                  style: AppTheme.bodyXLargeBold.copyWith(color: AppTheme.greyScale[900], fontSize: 20),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5.h),
                child: SmoothPageIndicator(
                    controller: _controller,  // PageController
                    count:  3,
                    effect:  ExpandingDotsEffect(
                      activeDotColor: AppTheme.primaryColor,
                      dotColor: AppTheme.greyScale[300]!,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),  // your preferred effect
                    onDotClicked: (index) {

                    }
                ),
              ),
              SizedBox(height: 4.h),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Button(
                    title: currentPage <= 1 ? 'Next' : 'Get Started',
                    press: (){
                      if(currentPage <= 1){
                        _controller.nextPage(duration: 1.seconds, curve: Curves.decelerate);
                      } else {
                        Get.to(() => const AuthPage(), transition: Transition.rightToLeftWithFade, duration: 1.seconds);
                      }
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
