import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:conception_i_tech/view/home/home_view.dart';
import 'package:conception_i_tech/view/notes/notes_view.dart';
import 'package:conception_i_tech/view/profile/profile_view.dart';
import 'package:conception_i_tech/view/product/product_view.dart';
import 'package:flutter/material.dart';

class RootView extends StatelessWidget {
  const RootView({Key? key}) : super(key: key);
  final screens = const [
    HomeView(),
    ProductView(),
    NotesView(),
    PersonView(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[1],
      bottomNavigationBar: CircleNavBar(
        activeIndex: 1,
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
      ),
    );
  }
}
