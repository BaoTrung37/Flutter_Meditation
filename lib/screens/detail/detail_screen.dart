import 'package:exercise1/components/my_bottom_nav_bar.dart';
import 'package:exercise1/screens/detail/components/body.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      bottomNavigationBar: MyNavigationBar(),
    );
  }
}
