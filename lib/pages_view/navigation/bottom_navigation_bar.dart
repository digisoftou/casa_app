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
            Navigator.pushNamed(context, "/addPost");
          },
          elevation: 10,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
          shape: const CircleBorder(),
        ),
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        // icons:
        // [
        //   Icons.home,
        //   Icons.shopping_bag_rounded,
        //   Icons.flag,
        //   Icons.person_rounded
        // ],
        // iconSize: 30,
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


    //   Scaffold(
    //   extendBody: true,
    //   body: pages[_bottomNavIndex],
    //   bottomNavigationBar: BottomAppBar(
    //     elevation: 0,
    //     padding: EdgeInsets.all(0),
    //     shape: const CircularNotchedRectangle(),
    //     notchMargin: 3,
    //     clipBehavior: Clip.antiAlias,
    //     child:  AnimatedBottomNavigationBar( // navigation bar
    //     icons: [
    //       Icons.ice_skating_sharp,
    //       Icons.ice_skating_sharp,
    //       Icons.ice_skating_sharp,
    //       Icons.ice_skating_sharp,
    //     ],
    //     leftCornerRadius: 34,
    //     rightCornerRadius: 34,
    //     height: 80,
    //     activeIndex: _bottomNavIndex,
    //     gapLocation: GapLocation.center,
    //     notchMargin: 8 ,
    //     elevation: 0,
    //     notchSmoothness: NotchSmoothness.smoothEdge,
    //     onTap: (index) => setState(() => _bottomNavIndex = index),
    //     backgroundColor: CasaColors.white,
    //
    //   ),
    //     // NavigationBar(
    //     //   height: 80,
    //     //   elevation: 0,
    //     //   indicatorColor: Colors.transparent,
    //     //   backgroundColor: CasaColors.white,
    //     //   destinations: [
    //     //     NavigationDestination(
    //     //         icon: Icon(
    //     //           Icons.home, ),
    //     //         label: ''),
    //     //     NavigationDestination(
    //     //         icon: Icon(Icons.home),
    //     //         label: ''),
    //     //     NavigationDestination(
    //     //         icon: Icon(Icons.home),
    //     //         label: ''),
    //     //     NavigationDestination(
    //     //         icon: Icon(Icons.home),
    //     //         label: ''),
    //     //     NavigationDestination(
    //     //         icon: Icon(Icons.home),
    //     //         label: ''),
    //     //   ],
    //     //
    //     // )
    //     // BottomNavigationBar(
    //     //     type: BottomNavigationBarType.fixed,
    //     //     elevation: 0,
    //     //     onTap: _selectPage,
    //     //     backgroundColor: CasaColors.white,
    //     //     unselectedItemColor: CasaColors.bottomIcons,
    //     //     selectedItemColor: CasaColors.black,
    //     //     currentIndex: _selectedPageIndex,
    //     //     showSelectedLabels: false,
    //     //     items: [
    //     //       BottomNavigationBarItem(
    //     //         icon: Icon(Icons.hail, size: 40,),
    //     //         label: ''
    //     //       ),
    //     //       BottomNavigationBarItem(
    //     //           icon: Icon(Icons.hail),
    //     //           label: ''
    //     //       ),
    //     //       BottomNavigationBarItem(
    //     //           icon: Icon(Icons.hail),
    //     //           label: ''
    //     //       ),
    //     //       BottomNavigationBarItem(
    //     //           icon: Icon(Icons.hail),
    //     //           label: ''
    //     //       ),
    //     //       BottomNavigationBarItem(
    //     //           icon: Icon(Icons.hail),
    //     //           label: ''
    //     //       ),
    //     //
    //     //     ],
    //     //   ),
    //
    //   ),
    //   floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
    //   floatingActionButton: Padding(
    //     padding: const EdgeInsets.only(bottom: 5.0, left: 5, right: 5),
    //     child: FloatingActionButton(
    //       onPressed: () {
    //         Navigator.pushNamed(context, "/addPost");
    //       },
    //       elevation: 0,
    //       backgroundColor: Colors.black,
    //       child: Icon(
    //         Icons.add,
    //         color: Colors.white,
    //         size: 30,
    //       ),
    //       shape: const CircleBorder(),
    //     ),
    //   ),
    // );
  }
}


