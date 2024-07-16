// ignore_for_file: deprecated_member_use

import 'package:expense_flutter_web/utils/colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container2 extends StatefulWidget {
  const Container2({super.key});

  @override
  State<Container2> createState() => _Container2State();
}

class _Container2State extends State<Container2> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileContainer1(),
      desktop: desktopContainer1(),
    );
  }

  mobileContainer1() {
    return Column(
      children: [
        Container(
          height: w! / 1.2,
          width: w! / 1.2,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(illustration), fit: BoxFit.contain),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Track your\nExpenses to\nSave Money",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1.2),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Helps you to organize \nyour income and expenses",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 45,
          child: ElevatedButton.icon(
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(AppColors.primary),
            ),
            onPressed: () {},
            label: const Text(
              "Try Free Demo",
              style: TextStyle(color: Colors.white),
            ),
            icon: const Icon(
              Icons.arrow_drop_down,
              color: Colors.white,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "-Web, iOS and Android",
          style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
        ),
      ],
    );
  }

  desktopContainer1() {
    return Container(
      height: 900,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.primary,
      ),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                Positioned(
                  right: -20,
                  top: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector3))),
                  ),
                ),
                Positioned(
                  bottom: -20,
                  left: -20,
                  child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(vector4))),
                  ),
                ),
                Positioned(
                  left: 43,
                  right: 43,
                  bottom: 0,
                  child: Container(
                    width: double.infinity,
                    height: 712,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(dashboard),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                companyLogo(fb),
                companyLogo(google),
                companyLogo(cocacola),
                companyLogo(samsung),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget companyLogo(String image) {
    return Container(
      height: 40,
      width: 160,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.contain),
      ),
    );
  }
}
