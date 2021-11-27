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




//   class MyNavigationBar extends StatelessWidget {
//   const MyNavigationBar({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 70,
//       decoration: BoxDecoration(color: Colors.white, boxShadow: [
//         BoxShadow(
//           offset: Offset(0, 0),
//           // blurRadius: 35,
//           // color: kPrimaryColor,
//         ),
//       ]),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Expanded(
//             child: ItemNavBar(
//                 imageStr: 'assets/icons/calendar.svg', text: 'Today'),
//           ),
//           Expanded(
//             child: ItemNavBar(imageStr: '', text: 'All Exercises'),
//           ),
//           Expanded(
//             child: ItemNavBar(imageStr: '', text: 'Settings'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class ItemNavBar extends StatelessWidget {
//   final String imageStr;
//   final String text;
//   const ItemNavBar({
//     required this.imageStr,
//     required this.text,
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               color: Color(0xFFF5CEB8),
//               image: DecorationImage(
//                 alignment: Alignment.centerLeft,
//                 image: AssetImage("assets/images/undraw_pilates_gpdb@1X.png"),
//               ),
//             ),
//             height: 35,
//           ),
//           Text(
//             text,
//             style: TextStyle(
//                 color: kTextColor, fontSize: 16, fontWeight: FontWeight.w500),
//           ),
//         ],
//       ),
//     );
//   }
// }
