import 'package:app/components/big_title.dart';
import 'package:app/components/input_field.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: const Icon(
            Icons.close,
            size: 20,
            color: Color(0xff333333),
          ),
        ),
        actions: const [
          Text(
            "注册",
            style: TextStyle(
              color: Color(0xff333333),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/images/fire.png",
                width: 96,
                height: 46,
              ),
            ),
            const SizedBox(height: 28),
            const BigTitle(titleText: "登录"),
            const SizedBox(height: 7),
            Text(
              "你好，欢迎来到yike!",
              style: TextStyle(
                color: FireColor.lightGrey,
                fontSize: 20,
              ),
            ),
            const InputField(
              hintText: "邮箱",
              inputType: TextInputType.emailAddress,
            ),
            const InputField(hintText: "密码", obscureText: true),
            const SizedBox(height: 60),
            Container(
              alignment: Alignment.center,
              height: 48,
              margin: const EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: FireColor.yellow,
                borderRadius: BorderRadius.circular(24),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(110, 255, 228, 49),
                    blurRadius: 16,
                    offset: Offset(0, 25),
                    spreadRadius: -18,
                  )
                ],
              ),
              child: Text(
                "登录",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: FireColor.textColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
