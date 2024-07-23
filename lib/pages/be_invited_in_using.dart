import 'dart:ui';

import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class BeInvitedInUsingPage extends StatelessWidget {
  const BeInvitedInUsingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: _Item(),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.purple,
        image: const DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 3, sigmaY: 2),
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(FireColor.avatar),
                radius: 21,
              ),
              const SizedBox(width: 12),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "断水流",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  Text(
                    "邀请你视频通话",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color.fromARGB(127, 255, 255, 255),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              _ActionIconBtn(
                iconName: "phone.png",
                backgroundColor: FireColor.red,
              ),
              const SizedBox(width: 32),
              _ActionIconBtn(
                iconName: "video.png",
                backgroundColor: FireColor.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ActionIconBtn extends StatelessWidget {
  final String iconName;
  final Color backgroundColor;
  const _ActionIconBtn({required this.iconName, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      child: Image.asset(
        "assets/images/$iconName",
        width: 18,
        height: 18,
      ),
    );
  }
}
