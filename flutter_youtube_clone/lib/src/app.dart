import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_youtube_clone/src/controller/app_controller.dart';
import 'package:flutter_youtube_clone/src/pages/explore.dart';
import 'package:flutter_youtube_clone/src/pages/home.dart';
import 'package:flutter_youtube_clone/src/pages/library.dart';
import 'package:flutter_youtube_clone/src/pages/subscribe.dart';
import 'package:get/get.dart';

class App extends GetView<AppController> {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        switch (RouteName.values[controller.currentIndex.value]) {
          case RouteName.Home:
            return const Home();
          case RouteName.Explore:
            return const Explore();
          case RouteName.Subs:
            return const Subscribe();
          case RouteName.Library:
            return const Library();
          case RouteName.Add:
            // bottomSheet;
            break;
        }
        return Container();
      }),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          currentIndex: controller.currentIndex.value,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          onTap: controller.changePageIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/icons/home_off.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/icons/home_on.svg",
                width: 22,
              ),
              label: "홈",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/icons/compass_off.svg",
                width: 22,
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/icons/compass_on.svg",
                width: 22,
              ),
              label: "탐색",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/icons/plus.svg",
                width: 35,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/icons/subs_off.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/icons/subs_on.svg",
                width: 22,
              ),
              label: "구독",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/svg/icons/library_off.svg",
              ),
              activeIcon: SvgPicture.asset(
                "assets/svg/icons/library_on.svg",
                width: 22,
              ),
              label: "보관함",
            ),
          ],
        ),
      ),
    );
  }
}
