import 'package:flutter/material.dart';
import 'package:yammy_app/core/utils/app_colors.dart';
import 'package:yammy_app/features/home/presentation/view/home_view.dart';

class ButtomNavigationBar extends StatefulWidget {
  const ButtomNavigationBar({
    super.key,
  });

  @override
  State<ButtomNavigationBar> createState() => _HomeViewState();
}

class _HomeViewState extends State<ButtomNavigationBar> {
  int currentTab = 0;
  List<Widget> pages = [
     const HomeView(foodsList: []),
    const Scaffold(),
     const Scaffold(),
    const Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          elevation: 0,
          height: 72,
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: -3,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List<Widget>.generate(4, (index) {
              return IconButton(
                  iconSize: 25,
                  onPressed: () {
                    setState(() {
                      currentTab = index;
                    });
                  },
                  icon: index == 0
                      ? currentTab == index
                          ? Icon(
                              Icons.home_sharp,
                              color: AppColor.primaryColor,
                            )
                          : Icon(
                              Icons.home_outlined,
                              color: AppColor.primaryColor,
                            )
                      : index == 1
                          ? currentTab == index
                              ? Icon(Icons.chat_bubble,
                                  color: AppColor.primaryColor)
                              : Icon(
                                  Icons.chat_bubble_outline,
                                  color: AppColor.primaryColor,
                                )
                          : index == 2
                              ? currentTab == index
                                  ? Icon(Icons.favorite,
                                      color: AppColor.primaryColor)
                                  : Icon(
                                      Icons.favorite_border_outlined,
                                      color: AppColor.primaryColor,
                                    )
                              : currentTab == index
                                  ? Icon(Icons.person,
                                      color: AppColor.primaryColor)
                                  : Icon(
                                      Icons.person_outline,
                                      color: AppColor.primaryColor,
                                    ));
            }),
          )),
      body: pages[currentTab],
    );
  }
}
