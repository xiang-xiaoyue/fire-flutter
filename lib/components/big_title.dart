import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class BigTitle extends StatelessWidget {
  final String titleText;
  const BigTitle({super.key, required this.titleText});

  @override
  Widget build(BuildContext context) {
    return Text(
      titleText,
      style: TextStyle(
        color: FireColor.textColor,
        fontSize: 28,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
