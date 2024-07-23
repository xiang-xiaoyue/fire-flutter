import 'package:app/components/big_title.dart';
import 'package:app/components/input_field.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const LeadingPng(),
        actions: [
          Image.asset(
            "assets/images/close.png",
            width: 24,
            height: 24,
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: SingleChildScrollView(
          // note: 弹起小键盘时会出现黄黑相间的线，显示超出像素了。用singleChildScrollview包裹column,即解决。
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/images/fire.png"),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 30),
                child: const BigTitle(titleText: "注册"),
              ),
              InputField(
                hintText: "请取个名字",
                suffix: Text(
                  "用户名已拥有",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: FireColor.red,
                    fontSize: 14,
                  ),
                ),
              ),
              InputField(
                hintText: "请输入邮箱",
                suffix: Image.asset(
                  "assets/images/content_right.png",
                  width: 21,
                  height: 16,
                ),
              ),
              InputField(
                hintText: "这里输入密码",
                suffix: Image.asset(
                  "assets/images/view.png",
                  width: 20,
                  height: 20,
                ),
              ),
              Container(
                alignment: Alignment
                    .center, //note：不加这个，container宽度即文字宽，加上之后，内容撑开,因为给了“定位”，找到了位置就有了大小。
                margin: const EdgeInsets.only(left: 30, top: 30, right: 30),
                height: 48,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(55, 39, 40, 50),
                    borderRadius: BorderRadius.circular(24)),
                child: const Text(
                  "注册",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
