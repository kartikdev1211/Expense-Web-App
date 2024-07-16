// ignore_for_file: deprecated_member_use

import 'package:expense_flutter_web/utils/colors.dart';
import 'package:expense_flutter_web/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
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
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Track your\nExpenses to\nSave Money",
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Helps you to organize your income and expenses",
                  style: TextStyle(color: Colors.grey.shade400, fontSize: 16),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all(AppColors.primary),
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
                      width: 20,
                    ),
                    Text(
                      "-Web, iOS and Android",
                      style:
                          TextStyle(color: Colors.grey.shade400, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration), fit: BoxFit.contain),
              ),
            ),
          )
        ],
      ),
    );
  }
}
