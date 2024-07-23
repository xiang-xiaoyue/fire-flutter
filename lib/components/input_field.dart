import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final String hintText;
  final Widget? suffix;
  final bool obscureText;
  final TextInputType inputType;
  const InputField({
    super.key,
    required this.hintText,
    this.suffix,
    this.obscureText = false,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 40),
      //margin: const EdgeInsets.only(top: 35),
      //login page margin top:35
      child: TextField(
        keyboardType: inputType,
        obscureText: obscureText,
        style: TextStyle(
          color: FireColor.textColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
        decoration: InputDecoration(
          //suffixIcon: Icon(Icons.remove_red_eye),
          hintText: hintText,
          hintStyle: TextStyle(
            color: FireColor.lightGrey,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
          suffix: suffix,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: FireColor.textColor,
              style: BorderStyle.solid,
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: FireColor.textColor,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}
