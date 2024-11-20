import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';

class StartCookButton extends StatelessWidget {
  const StartCookButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.zero,
        width: 180,
        height: 40,
        child: ElevatedButton(
            onPressed: () {
            },
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(AppColor.primaryColor),
            ),
            child: const Center(
              child: Text(
                'Start Cook',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            )),
      ),
    );
  }
}
