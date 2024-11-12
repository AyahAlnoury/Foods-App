import 'package:flutter/material.dart';
import 'package:yammy_app/features/home/presentation/view/home_view.dart';

class TestView extends StatelessWidget {
  const TestView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then((value) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => const HomeView()));
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('TestView'),
      ),
      body: Center(
        child: Text('TestView'),
      ),
    );
  }
}
