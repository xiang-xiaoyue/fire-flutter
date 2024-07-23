import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FireColor {
  static String avatar = "https://randomuser.me/api/portraits/women/72.jpg";

  static Color textColor = const Color(0xff272832);

  static Color grey = const Color(0xffd4d4d6);
  static Color lightGrey = const Color.fromARGB(127, 39, 40, 50);
  static Color inputGrey = const Color(0xfff3f4f6);

  static Color background = const Color(0xfff4f4f4);

  static Color blue = const Color(0xff4aaaff);
  static Color red = const Color(0xffff5d5b);

  static Color yellow = const Color(0xFFFFE431);
  static Color green = const Color(0xff30c74d);
}

class ScaleLeading extends StatelessWidget {
  const ScaleLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        "assets/images/scale.png",
        width: 23,
        height: 23,
      ),
      onTap: () {
        context.pop();
      },
    );
  }
}

class CancelLeading extends StatelessWidget {
  const CancelLeading({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pop();
      },
      child: Center(
        child: Text(
          "取消",
          style: TextStyle(
            color: FireColor.textColor,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class LeadingPng extends StatelessWidget {
  const LeadingPng({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        "assets/images/left.png",
        width: 24,
        height: 24,
        color: Colors.black,
      ),
      onTap: () {
        context.pop();
      },
    );
  }
}
