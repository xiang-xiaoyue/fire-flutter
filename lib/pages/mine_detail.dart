import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class MineDetailPage extends StatelessWidget {
  const MineDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: LeadingPng(),
        centerTitle: true,
        title: const Text("详细"),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              padding: const EdgeInsets.only(top: 20),
              children: const [
                _AvatarItem(),
                _Item(label: "签名", text: "看没看过阿凡达"),
                _Item(label: "注册", text: "2022-02-02 13:22:22"),
                _Item(label: "昵称", text: "看阿凡达"),
                _Item(label: "性别", text: "男"),
                _Item(label: "生日", text: "1996-12-23"),
                _Item(label: "手机", text: "12345678901"),
                _Item(label: "邮箱", text: "example@qq.com"),
                _Item(label: "密码", text: "******"),
              ],
            ),
            Positioned(
              bottom: 30,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 16),
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Text(
                  "退出应用",
                  style: TextStyle(
                    color: Color(0xffff5d5b),
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _AvatarItem extends StatelessWidget {
  const _AvatarItem();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 13),
      height: 74,
      child: Row(
        children: [
          const Text("头像"),
          const SizedBox(width: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(FireColor.avatar, width: 54, height: 54),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            size: 16,
            color: Color.fromARGB(85, 0, 0, 0),
          ),
        ],
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String label;
  final String text;
  const _Item({required this.label, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16, right: 13),
      height: 56,
      child: Row(
        children: [
          Text(
            "头像",
            style: TextStyle(color: FireColor.textColor, fontSize: 16),
          ),
          const SizedBox(width: 16),
          Text(
            text,
            style: const TextStyle(
              color: Color.fromARGB(120, 30, 40, 50),
              fontSize: 16,
            ),
          ),
          const Spacer(),
          const Icon(
            Icons.chevron_right,
            size: 16,
            color: Color.fromARGB(85, 0, 0, 0),
          ),
        ],
      ),
    );
  }
}
