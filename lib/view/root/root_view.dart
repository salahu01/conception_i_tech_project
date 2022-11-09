import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:conception_i_tech/controller/root/root_controller.dart';
import 'package:conception_i_tech/view/home/home_view.dart';
import 'package:conception_i_tech/view/notes/notes_view.dart';
import 'package:conception_i_tech/view/profile/profile_view.dart';
import 'package:conception_i_tech/view/product/product_view.dart';
import 'package:flutter/material.dart';

class RootView extends StatelessWidget {
  RootView({super.key});
  final screens = const [
    HomeView(),
    ProductView(),
    NotesView(),
    PersonView(),
  ];
  final rootCtrl = RootController();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: rootCtrl.currentIndex,
      builder: (context, index, child) {
        return Scaffold(
          body: screens[index],
          bottomNavigationBar: CircleNavBar(
            activeIndex: index,
            activeIcons: const [
              Icon(Icons.home_filled),
              Icon(Icons.crop_square_rounded),
              Icon(Icons.notes_sharp),
              Icon(Icons.person)
            ],
            inactiveIcons: const [
              Icon(Icons.home_filled),
              Icon(Icons.crop_square_rounded),
              Icon(Icons.notes_sharp),
              Icon(Icons.person)
            ],
            color: Colors.white,
            height: 60,
            circleWidth: 48,
            shadowColor: Colors.black26,
            elevation: 10,
            onTab: (v) {
              rootCtrl.changeIndex(v);
            },
          ),
        );
      },
    );
  }
}
