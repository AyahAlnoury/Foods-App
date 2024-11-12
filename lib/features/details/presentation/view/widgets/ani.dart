import 'package:flutter/material.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class RotatingImagePageView extends StatefulWidget {
  const RotatingImagePageView(
      {super.key, required this.index, required this.foodsList});

  @override
  _RotatingImagePageViewState createState() => _RotatingImagePageViewState();
  final int index;
  final List<Foodssss> foodsList;
}

class _RotatingImagePageViewState extends State<RotatingImagePageView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  int _currentIndex = 0;

  // final List<String> foodsList = [
  //   'https://via.placeholder.com/300.png?text=Food+1',
  //   'https://via.placeholder.com/300.png?text=Food+2',
  //   'https://via.placeholder.com/300.png?text=Food+3',
  //   'https://via.placeholder.com/300.png?text=Food+4',
  // ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat(period: Duration(seconds: 7), reverse: false);

    _animation = Tween<double>(begin: 0, end: 2 * 3.14159).animate(_controller);

    _controller.forward();

    // الاستماع إلى انتهاء الحركة
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.stop(); // إيقاف الحركة عند الانتهاء
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onChange(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      width: double.infinity,
      child: PageView.builder(
        onPageChanged: onChange,
        itemCount: 2,
        //foodsList. length,
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _animation,
            builder: (context, child) {
              return Transform.rotate(
                angle: _animation.value,
                child: Container(
                  height: 250,
                  width: 250,
                  // double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(250),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(widget.foodsList[index].image)),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
