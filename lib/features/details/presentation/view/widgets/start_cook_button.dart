import 'package:flutter/material.dart';

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
              // Navigator.push(context,
              //     MaterialPageRoute(builder: (context) => const HomeView()));
            },
            style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color.fromARGB(234, 243, 82, 106)),
            ),
            child: Center(
              child: const Text(
                'Start Cook',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            )),
      ),
    );
  }
}
