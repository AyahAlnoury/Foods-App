import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yammy_app/core/utils/app_size.dart';
import 'package:yammy_app/features/home/data/models/home_model.dart';
import 'package:yammy_app/features/home/presentation/view/widgets/item_card.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_cubit.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_state.dart';

class ViewAllList extends StatelessWidget {
  const ViewAllList({super.key, required this.foodsList});
  final List<Foods> foodsList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Meals"),
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
          if (state is HomeInitialState) {
            return const Center(child: Text('No Items Available'));
          } else if (state is LoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is LoadedState) {
            return GridView.builder(
                itemCount: 3,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p17),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppPadding.p17,
                  crossAxisSpacing: AppPadding.p17,
                  childAspectRatio: .7, //height/width
                ),
                itemBuilder: (context, index) {
            
                  ItemCard(
                    foodsList: foodsList,
                    index: index,
                  );
                  return null;

                
                });
          } else if (state is ErrorState) {
            return Center(child: Text(state.errorMessage));
          }
          return const Center(child: Text('Something went wrong'));
        }),
      ),
    );
  }
}
