import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/core/utils/assets_manager.dart';
import 'package:yammy_app/features/splash/presentation/view/widgets/animation_text.dart';
import 'package:yammy_app/features/splash/presentation/view/widgets/button_start.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            opacity: 0.8,
            image: AssetImage(
              AssetsManger.splash,
            ),
            fit: BoxFit.cover,
          )),
          child:   Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 25.h),
              AnimationText(),
               Center(
                child: Text(
                  "Let’s make a delicious dish with \n the best recipe for the family",
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 19.sp,
                      color: Colors.white),
                ),
              ),
               ButtonStart(),
            ],
          )),
    );
  }
}
