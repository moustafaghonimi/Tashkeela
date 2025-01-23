import 'package:flutter/cupertino.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:tashkeela/Feathures/history_player/presentaion/view/history_player_view.dart';
import 'package:tashkeela/Feathures/home/presentaion/view/home_page_view.dart';
import 'package:tashkeela/Feathures/news/presentaion/view/news_view.dart';
import 'package:tashkeela/Feathures/profile/presentaion/view/profile_view.dart';
import 'package:tashkeela/Feathures/search/presentaion/view/search_view.dart';
import 'package:tashkeela/core/utils/app_color.dart';

class HomeNavBar extends StatelessWidget {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 2);

  HomeNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen on a non-scrollable screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardAppears: true,
      // popBehaviorOnSelectedNavBarItemPress: PopActionScreensType.all,
      padding: const EdgeInsets.only(top: 4),

      backgroundColor: Appcolor.bgColor,
      animationSettings: const NavBarAnimationSettings(
        navBarItemAnimation: ItemAnimationSettings(
          // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 400),
          curve: Curves.easeInOutCirc,
        ),
        screenTransitionAnimation: ScreenTransitionAnimationSettings(
          // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          duration: Duration(milliseconds: 350),
          screenTransitionAnimationType: ScreenTransitionAnimationType.fadeIn,
        ),
      ),
      confineToSafeArea: true,
      navBarHeight: kBottomNavigationBarHeight,
      navBarStyle: NavBarStyle.style3,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
    );
  }
}

List<Widget> _buildScreens() {
  return [
    NewsView(),
    HistoryPlayerView(),
    HomePage(),
    SearchView(),
    ProfileView(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.news),
      icon: Icon(CupertinoIcons.news_solid),
      title: ("الأخبار"),
      activeColorPrimary: Appcolor.primaryColor,
      inactiveColorPrimary: Appcolor.textColor,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.archivebox),
      icon: Icon(CupertinoIcons.archivebox_fill),
      title: ("التاريخ"),
      activeColorPrimary: Appcolor.primaryColor,
      inactiveColorPrimary: Appcolor.textColor,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.home),
      icon: Icon(
        CupertinoIcons.house_fill,
      ),
      title: ("الرئيسية"),
      activeColorPrimary: Appcolor.primaryColor,
      inactiveColorPrimary: Appcolor.textColor,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.search_circle),
      icon: Icon(CupertinoIcons.search_circle_fill),
      title: ("البحث"),
      activeColorPrimary: Appcolor.primaryColor,
      inactiveColorPrimary: Appcolor.textColor,
    ),
    PersistentBottomNavBarItem(
      inactiveIcon: Icon(CupertinoIcons.person_alt_circle),
      icon: Icon(CupertinoIcons.person_alt_circle_fill),
      title: ("انت"),
      activeColorPrimary: Appcolor.primaryColor,
      inactiveColorPrimary: Appcolor.textColor,
    ),
  ];
}
