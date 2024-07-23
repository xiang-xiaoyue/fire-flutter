import 'dart:async';

import 'package:app/components/big_title.dart';
import 'package:app/components/input_field.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class RetrievePwdPage extends StatefulWidget {
  const RetrievePwdPage({super.key});

  @override
  State<RetrievePwdPage> createState() => _RetrievePwdPageState();
}

class _RetrievePwdPageState extends State<RetrievePwdPage> {
  bool isValidating = false;
  int seconds = 0;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void startCountSeconds() {
    const oneSec = Duration(seconds: 1);

    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (seconds <= 1) {
          isValidating = false;
          _timer.cancel();
        } else {
          seconds -= 1;
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todo: 很多页面都是白色背景，有的是另一种色的背景，有空再处理。
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: LeadingPng(),
        centerTitle: true,
        title: const Text(
          "找回密码",
          style: TextStyle(
            fontSize: 20,
            color: Color(0xff333333),
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset("assets/images/fire.png"),
              ),
              const SizedBox(height: 27),
              const BigTitle(titleText: "找回密码"),
              const SizedBox(height: 7),
              const Text(
                "请输入注册邮箱获取验证码",
                style: TextStyle(
                  color: Color.fromARGB(127, 39, 40, 50),
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 30),
              const InputField(hintText: "邮箱"),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(
                            width: 1, color: const Color(0xffe0e0e0)),
                        color: Colors.white,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Container(
                    alignment: Alignment.center,
                    width: 130,
                    height: 48,
                    decoration: BoxDecoration(
                      color: isValidating ? FireColor.grey : FireColor.yellow,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 25),
                          color: Color.fromARGB(100, 255, 228, 49),
                          blurRadius: 16,
                          spreadRadius: -18,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          if (seconds == 0 && isValidating == false) {
                            isValidating = !isValidating;
                            seconds = 5;
                          }
                        });
                        startCountSeconds();
                      },
                      child: Text(
                        isValidating ? "$seconds秒后重发" : "获取验证码",
                        style: TextStyle(
                          color:
                              isValidating ? Colors.white : FireColor.textColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              Container(
                alignment: Alignment.center,
                height: 48,
                decoration: BoxDecoration(
                  color: isValidating ? FireColor.yellow : FireColor.grey,
                  borderRadius: BorderRadius.circular(24),
                ),
                margin: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isValidating = !isValidating;
                      seconds = 0;
                    });
                  },
                  child: Text(
                    "重置密码",
                    style: TextStyle(
                      color: isValidating ? Colors.black : Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
