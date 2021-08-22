import 'package:covid_tracking_app/base/common/constants.dart';
import 'package:covid_tracking_app/pages/home/presentations/views/home_page.dart';
import 'package:covid_tracking_app/pages/home_root/presentation/controllers/home_root_controller.dart';
import 'package:covid_tracking_app/pages/news/presentations/views/news_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../res.dart';

class HomeRootScreen extends GetView<HomeRootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Obx(() => GetPageHomeWidget(
                value: controller.currentIndex,
              ))),
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
          ),
          child: Obx(() => XBottomNavigationBar(currentIndex: controller.currentIndex, onTap: controller.setCurrentIndex))),
    );
  }
}

class GetPageHomeWidget extends StatelessWidget {
  final int value;

  const GetPageHomeWidget({Key? key, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch (value) {
      case Pages.HOME:
        return HomePage();
      default:
        return NewsPage();
    }
  }
}

class XBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int index) onTap;

  const XBottomNavigationBar({Key? key, required this.currentIndex, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, -1),
          )
        ],
      ),
      child: BottomNavigationBar(
        iconSize: 32,
        backgroundColor: const Color(0xFFFAFAFA),
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey,
        fixedColor: Colors.black,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          _buildBottomNavItem('Home', Res.ic_home_selected, Res.ic_home_unselected),
          _buildBottomNavItem('News', Res.ic_news_selected, Res.ic_news_unselected),
        ],
        currentIndex: currentIndex,
        onTap: onTap,
      ),
    );
  }
}

BottomNavigationBarItem _buildBottomNavItem(String label, String activeIcon, String icon) {
  return BottomNavigationBarItem(
    label: label,
    icon: SvgPicture.asset(
      icon,
      height: 24,
      width: 24,
    ),
    activeIcon: SvgPicture.asset(
      activeIcon,
      height: 24,
      width: 24,
      color: Colors.black,
    ),
  );
}
