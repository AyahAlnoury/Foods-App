import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/features/bottomNavigationBer/presentain/view/bottob_navigation_bar.dart';

class ButtonStart extends StatelessWidget {
  const ButtonStart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      width: 250.w,
      height: 40.h,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ButtomNavigationBar(),
                 ));
          },
          style: const ButtonStyle(
            backgroundColor:
                WidgetStatePropertyAll(Color.fromARGB(234, 243, 82, 106)),
          ),
          child: Center(
            child: Text(
              'Start',
              style: TextStyle(color: Colors.white, fontSize: 30.sp),
            ),
          )),
    );
  }
}
