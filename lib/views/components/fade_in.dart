import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;

  const FadeIn(this.delay, this.child, {super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('opacity', Tween(begin: 0.0, end: 1.0),
              duration: const Duration(milliseconds: 500))
          .thenTween('translateX', Tween(begin: 300.0, end: 0.0),
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
      );
    return CustomAnimationBuilder(
      delay: Duration(milliseconds: (300 * delay).round()),
      duration: tween.duration,
      tween: tween,
      child: child,
      builder: (context, value, child) => Opacity(
        opacity: value.get("opacity"),
        child: Transform.translate(
          offset: Offset(value.get("translateX"), 0),
          child: child,
        ),
      ),
    );
  }
}
