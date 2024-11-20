import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';

class InstructionsList extends StatelessWidget {
  const InstructionsList(
      {super.key, required this.foodsList, required this.index});
  final List<Foods> foodsList;

  final int index;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: foodsList[index].instructions.length,
        shrinkWrap: true,
        itemBuilder: (context, indx) {
          return ListTile(
              title: Row(children: [
            Text(
              '${indx + 1} ',
              style: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: 11,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 3,
            ),
            Expanded(
              child: Text(
                '  ${foodsList[index].instructions[indx]}',
                style:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ]));
        });
  }
}
