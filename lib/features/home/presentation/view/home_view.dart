import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/core/utils/app_size.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/gridview_widget.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/row_view_all.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/search_bar.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/top_card.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_cubit.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.foodsList});
  final List<Foods> foodsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      const TopCard(),
      SearchTabBar(foodsList: foodsList),
      SizedBox(height: 10.h),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: AppPadding.p17.sp),
        child: RowViewAll(
          foodsList: foodsList,
        ),
      ),
      SizedBox(height: 10.h),
      BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        if (state is HomeInitialState) {
          return const Center(child: Text('No Items Available'));
        } else if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LoadedState) {
          return GridviewWidget(foodsList: state.meals);
        } else if (state is ErrorState) {
          return Center(child: Text(state.errorMessage));
        }
        return const Center(child: Text('Something went wrong'));
      }),
    ])));
  }
}
