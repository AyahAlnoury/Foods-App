import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_cubit.dart';

class SearchTabBar extends StatefulWidget {
  const SearchTabBar({super.key, required this.foodsList});
  final List<Foods> foodsList;
  @override
  State<SearchTabBar> createState() => _SearchTabBarState();
}

class _SearchTabBarState extends State<SearchTabBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: const Offset(0, 3),
          ),
        ]),
        child: Expanded(
          child: TextField(
            onChanged: (value) {
              context.read<HomeCubit>().filterFoods(value);
            },
            style: const TextStyle(),
            controller: _searchController,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColor.primaryColor,
              iconColor: Colors.white,
              hintText: 'Search..',
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
      ),
    );
  }
}
