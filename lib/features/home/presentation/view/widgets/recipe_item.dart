// import 'dart:js';

// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:yammy_app/core/utils/assets_manager.dart';
// import 'package:yammy_app/features/details/presentation/view/details_view.dart';
// import 'package:yammy_app/features/home/presentation/view/widgets/rating_star.dart';
// import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_cubit.dart';
// import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_state.dart';

// class RecipeItem extends StatelessWidget {
//   const RecipeItem({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       final cubit = context.read<HomeCubit>();
//       cubit.fetch();
//     });

//     return GestureDetector(
//       onTap: () {
//         Navigator.push(
//             context, MaterialPageRoute(builder: (context) => DetailsView(index: null, foodsList: [],)));
//       },
//       child: SizedBox(
//         height: 390.h,
//         child: BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
//           if (state is HomeInitialState) {
//             return const Center(child: Text('No Items Available'));
//           } else if (state is LoadingState) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (state is LoadedState) {
//             final foods = state.homeModel;
//             //  return Text((foods[0].name));
//             return ListView.builder(
//                 itemCount: foods.length,
//                 itemBuilder: (contex, index) {
//                   final foods = state.homeModel[index];
//                   return Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       // Stack(
//                       //   children: [
//                       ClipRRect(
//                           borderRadius: BorderRadius.circular(15),
//                           child: Image.network(
//                             // Image.asset(
//                             foods.image,
//                             //AssetsManger.recipe2,
//                             height: 123.h,
//                             width: 123.w,
//                             fit: BoxFit.fill,
//                           )),
//                       Text(foods.name,
//                           style: TextStyle(
//                             fontSize: 17.sp,
//                             fontWeight: FontWeight.bold,
//                           )),
//                       Text('data',
//                           style: TextStyle(
//                             fontSize: 15.sp,
//                             fontWeight: FontWeight.w400,
//                           )),
//                     ],
//                     //)
//                     // ]
//                   );
//                 });
//           } else if (state is ErrorState) {
//             return Center(child: Text(state.errorMessage));
//           }
//           return const Center(child: Text('Something went wrong'));
//         }),
//       ),
//     );
//   }
// }
