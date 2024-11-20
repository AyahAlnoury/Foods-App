import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimationText extends StatefulWidget {
  const AnimationText({super.key});

  @override
  State<AnimationText> createState() => _AnimationTextState();
}

class _AnimationTextState extends State<AnimationText> {
  bool showFinalText = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 250.w,
        height: 110.h,
        child: DefaultTextStyle(
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.bold,
          ),
          child: showFinalText
              ? const Text(
                  'What do you want \nto COOK today?',
                  style: TextStyle(color: Colors.white),
                )
              : AnimatedTextKit(
                  totalRepeatCount: 1,
                  pause: const Duration(milliseconds: 1),
                  animatedTexts: [
                    FadeAnimatedText(
                      'Whtat do YOU',
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                    FadeAnimatedText(
                      'Whtat do you WANT',
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                    FadeAnimatedText(
                      'Whtat do you want \n to COOK today?',
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                  ],
                  onFinished: () {
                    setState(() {
                      showFinalText = true;
                    });
                  },
                ),
        ),
      ),
    );
  }
}
