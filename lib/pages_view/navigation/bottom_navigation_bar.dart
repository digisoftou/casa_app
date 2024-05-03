import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:casa_app/CasaColors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../catalogue/catalogue_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../saved/saved_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {

  final List<Widget> pages = [
    const HomeScreen(),
    const CatalogueScreen(),
    const SavedScreen(),
    const ProfileScreen(),
  ];


  final List<String> iconList = [
    'assets/svg_icons/bottom_bar_icons/unactive/home_icon.svg',
    'assets/svg_icons/bottom_bar_icons/unactive/catalogue_icon.svg',
  'assets/svg_icons/bottom_bar_icons/unactive/saved_icon.svg',
   'assets/svg_icons/bottom_bar_icons/unactive/profile_icon.svg',

  ];

  int _bottomNavIndex = 0;


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        extendBody: true,
        body: pages[_bottomNavIndex],
        floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
           // Navigator.pushNamed(context, "/addPost");
          },
          elevation: 10,
          backgroundColor: Colors.black,
          shape: const CircleBorder(),
          child: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive){
          return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: isActive
                      ? CasaColors.bottomIconsBg
                      : Colors.transparent,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                      iconList[index],
                      color: isActive
                        ? Colors.black
                        : CasaColors.bottomIcons,

                  ),
                ),
              ),

          );
        },
        leftCornerRadius: 34,
        rightCornerRadius: 34,
        height: 80,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchMargin: 8 ,
        elevation: 30,
        notchSmoothness: NotchSmoothness.smoothEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        backgroundColor: CasaColors.white,

      ),

    );

  }
}


