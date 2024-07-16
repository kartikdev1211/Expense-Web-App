// ignore_for_file: deprecated_member_use

import 'package:expense_flutter_web/utils/colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:expense_flutter_web/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileNavBar(),
      desktop: desktopNavBar(),
    );
  }

  mobileNavBar() {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.menu),
            navLogo(),
          ],
        ),
      ),
    );
  }

  desktopNavBar() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton("Features"),
              navButton("About Us"),
              navButton("Pricing"),
              navButton("Feedback"),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderButtonStyle,
              onPressed: () {},
              child: Text(
                "Request a Demo",
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(logo),
        ),
      ),
    );
  }
}
