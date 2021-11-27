import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:exercise1/constants.dart';

class MyNavigationBar extends StatelessWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      height: 70,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavItem(
            title: "Today",
            svgStr: "assets/icons/calendar.svg",
            press: () {},
          ),
          NavItem(
            title: "All Exercises",
            svgStr: "assets/icons/gym.svg",
            press: () {},
            isActive: true,
          ),
          NavItem(
            title: "Settings",
            svgStr: "assets/icons/Settings.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String svgStr;
  final String title;
  final Function press;
  final bool isActive;
  const NavItem({
    Key? key,
    required this.svgStr,
    required this.title,
    required this.press,
    this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SvgPicture.asset(
            svgStr,
            color: isActive ? kActiveIconColor : kTextColor,
          ),
          Text(
            title,
            style: TextStyle(
                color: isActive ? kActiveIconColor : kTextColor, fontSize: 15),
          ),
        ],
      ),
    );
  }
}
