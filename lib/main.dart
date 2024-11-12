import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yammy_app/features/home/data/repository/foods_repository.dart';
import 'package:yammy_app/features/home/presentation/viewModel/cubit/home_cubit.dart';
import 'package:yammy_app/features/splash/presentation/view/spalsh_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return BlocProvider(
              create: (context) => HomeCubit(FoodsRepository())..fetch(),
              child: const MaterialApp(
                  debugShowCheckedModeBanner: false, home: SplashPage()

                  // RotatingImagePageView()
                  // const HomeView(),
                  ));
        });
  }
}
