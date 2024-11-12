import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 20,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Color.fromARGB(234, 243, 82, 106),
      ),
      child: Center(
        child: const Row(
          children: [
            Icon(
              color: Colors.white, 
              Icons.star,
              size: 16,
            ), 
            SizedBox(width: 4),
            Text(
              "4.3",
              style: TextStyle(color: Colors.white), 
            )
           ],
        ),
      ),
    );
  }
}
  
 