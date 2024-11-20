import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class RotatingImage extends StatefulWidget {
  const RotatingImage(
      {super.key, required this.index, required this.foodsList});

  @override
  createState() => _RotatingImagePageViewState();
  final int index;
  final List<Foods> foodsList;
}

class _RotatingImagePageViewState extends State<RotatingImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(period: const Duration(seconds: 7), reverse: false);

    _animation = Tween<double>(begin: 0, end: 2 * 3.14159).animate(_controller);

    _controller.forward();

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.stop();
      }
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.rotate(
                  angle: _animation.value,
                  child: Container(
                      height: 250.h,
                      width: 250.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(250.r),
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  widget.foodsList[widget.index].image)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 3,
                              blurRadius: 12,
                              offset: const Offset(0, 3),
                            ),
                          ])));
            }));
  }
}
