import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/assets_manager.dart';

class TopCard extends StatelessWidget {
  const TopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                150,
                30,
              )),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    AssetsManger.recipe1,
                  )),
            ),
            child: const Center(
              child: Text(
                "What do you want\nto cook today?",
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
      ],
    );
  }
}
