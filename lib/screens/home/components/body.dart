import 'package:exercise1/components/search_bar.dart';
import 'package:exercise1/screens/detail/detail_screen.dart';
import 'package:exercise1/screens/home/components/category_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          // the height of the container is 45%
          height: size.height * 0.45,
          decoration: BoxDecoration(
            color: Color(0xFFF5CEB8),
            image: DecorationImage(
              alignment: Alignment.centerLeft,
              image: AssetImage("assets/images/undraw_pilates_gpdb@1X.png"),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                      color: Color(0xFFF2BEA1),
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset("assets/icons/menu.svg"),
                  ),
                ),
                Text(
                  "Good Morning \nShishir",
                  style: Theme.of(context).textTheme.headline4!.copyWith(
                        fontWeight: FontWeight.w900,
                      ),
                ),
                SearchBar(),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.90,
                    children: [
                      CategoryCard(
                        strSvg: "assets/icons/Hamburger.svg",
                        title: "Diet \nRecommendation",
                        press: () {},
                      ),
                      CategoryCard(
                        strSvg: "assets/icons/Excrecises.svg",
                        title: "Kegel Exercises",
                        press: () {},
                      ),
                      CategoryCard(
                        strSvg: "assets/icons/Meditation.svg",
                        title: "Meditation",
                        press: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return DetailScreen();
                          }));
                        },
                      ),
                      CategoryCard(
                        strSvg: "assets/icons/yoga.svg",
                        title: "Yoga",
                        press: () {},
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}





// class Body extends StatelessWidget {
//   const Body({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Color(0xFFF8F8F8),
//       child: Stack(
//         children: [
//           Positioned(
//             top: 0,
//             left: 0,
//             right: 0,
//             child: Container(
//               height: MediaQuery.of(context).size.height * 0.5 - 20,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/images/bg_img.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           Container(
//             child: Padding(
//               padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.end,
//                     children: [
//                       CircleAvatar(
//                         child: SvgPicture.asset('assets/icons/menu.svg'),
//                         radius: 30,
//                         backgroundColor: Color(0xFB1856D),
//                       ),
//                     ],
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(1),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Good Morning\nShishir',
//                           textAlign: TextAlign.start,
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 35,
//                           ),
//                           maxLines: 2,
//                         ),
//                       ],
//                     ),
//                   ),
//                   Container(
//                     alignment: Alignment.center,
//                     margin: const EdgeInsets.only(
//                       top: 20.0,
//                       bottom: 20,
//                     ),
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: kDefaultPadidng),
//                     height: 50,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(30),
//                       color: Colors.white,
//                       boxShadow: [
//                         BoxShadow(
//                           offset: Offset(0, 10),
//                           blurRadius: 50,
//                           color: kPrimaryColor,
//                         ),
//                       ],
//                     ),
//                     // add icon to textfield
//                     child: TextField(
//                       decoration: InputDecoration(
//                         icon: Icon(
//                           Icons.search,
//                           size: 30,
//                         ),
//                         hintText: 'Search',
//                         // hintStyle: TextStyle(color: kTextColor),
//                         enabledBorder: InputBorder.none,
//                         focusedBorder: InputBorder.none,
//                       ),
//                     ),
//                   ),
//                   Categorys(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
