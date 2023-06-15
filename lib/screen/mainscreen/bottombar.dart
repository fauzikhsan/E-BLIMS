//import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// ignore_for_file: prefer_const_constructors, unused_import, unused_field, library_private_types_in_public_api, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pboproject/screen/mainscreen/perpus.dart';
import 'package:pboproject/screen/mainscreen/riwayat.dart';
//import "package:persistent_bottom_nav_bar/persistent-tab-view.dart";
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';
//import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'current.dart';
import 'home.dart';

void main() => runApp(MyAppp());

class MyAppp extends StatelessWidget {
  const MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(canvasColor: Colors.transparent),
      home: CurrentRead(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key, required this.displayname});
  final String displayname;
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final int _selectedIndex = 0;
  // PageController _pageController;
  final GlobalKey _bottomNavigationKey = GlobalKey();
  @override
  void initState() {
    _pageController = PersistentTabController();
    super.initState();
  }

  var _timer;
  @override
  void dispose() {
    _pageController.dispose();
    _timer.cancel();
    super.dispose();
  }

  late PersistentTabController _pageController;

  List<Widget> _buildScreens() {
    return [
      CurrentRead(),
      HomeScreen(),
      History(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.book),
        title: ("Yours"),
        activeColorPrimary: Color(0xff134074),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.square_grid_2x2,
        ),
        title: ("e-BLiMS"),
        activeColorPrimary: Color(0xff134074),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(
          CupertinoIcons.doc_text_search,
        ),
        title: ("History"),
        activeColorPrimary: Color(0xff134074),
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _pageController,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style9, // Choose the nav bar style with this property.
    );
  }
}
