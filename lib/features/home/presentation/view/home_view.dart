import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/gridview_widget.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/search_bar.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/top_card.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_cubit.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_state.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
     // addNote(title, content);
    // final cubit = context.read<HomeCubit>();

    // WidgetsBinding.instance.addPostFrameCallback((_) {
    //   cubit.fetch();
    // });
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      const TopCard(),
      SearchTabBar(),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 47, vertical: 11),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Popular Recipe",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold)),
          Text(
            "View All",
            style: TextStyle(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 18.sp),
          ),
        ]),
      ),
      BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
        if (state is HomeInitialState) {
          return const Center(child: Text('No Items Available'));
        } else if (state is LoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is LoadedState) {
          return gridview_widget(foodsList: state.homeModel);
        } else if (state is ErrorState) {
          return Center(child: Text(state.errorMessage));
        }
        return const Center(child: Text('Something went wrong'));
      }),
    ])));
  }
}
