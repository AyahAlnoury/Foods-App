import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';

class SearchTabBar extends StatelessWidget {
  SearchTabBar({super.key});
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              style: TextStyle(),
              controller: _searchController,
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColor.primaryColor,
                iconColor: Colors.white,
                hintText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search, color: Colors.white),
                  onPressed: () {},
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
