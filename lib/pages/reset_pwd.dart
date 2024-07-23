import 'package:app/components/input_field.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class ResetPwdPage extends StatelessWidget {
  const ResetPwdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: LeadingPng(),
        title: const Text(
          "重置密码",
          style: TextStyle(
            color: Color(0xff333333),
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(FireColor.avatar),
                radius: 40,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              "断水流",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: FireColor.textColor,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              "该邮箱还未注册，输入密码成为新账号",
              style: TextStyle(
                fontSize: 14,
                color: FireColor.blue,
              ),
            ),
            const SizedBox(height: 36),
            Text(
              "请重新设置密码",
              style: TextStyle(
                color: FireColor.lightGrey,
                fontSize: 20,
              ),
            ),
            const InputField(
              hintText: "密码",
              obscureText: true,
              //note: suffix是图片，无法与左边的文字对齐，若是用suffixIcon属性，则可对齐。这是Flutter的BUG,暂时就这么着吧。
              /*
              suffix: Image.asset(
                "assets/images/view.png",
                color: Colors.black,
              ),
      */
            ),
          ],
        ),
      ),
    );
  }
}
