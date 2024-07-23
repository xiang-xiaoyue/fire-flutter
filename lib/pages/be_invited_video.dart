import 'dart:ui';

import 'package:app/components/chat_btn.dart';
import 'package:app/components/chat_page_avatar.dart';
import 'package:app/components/invite_title.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class BeInvitedVideoPage extends StatelessWidget {
  const BeInvitedVideoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/bg.jpg"),
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 35, sigmaY: 35),
              child: const SizedBox(
                width: double.infinity,
                height: double.infinity,
              ),
            ),
          ),

          // 头部导航栏
          AppBar(
            backgroundColor: Colors.transparent,
            leading: const ScaleLeading(),
            title: const InviteTitle(title: "邀请你视频通话"),
            centerTitle: true,
          ),

          // 中间头像与用户名
          const Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: ChatPageAvatar(),
          ),

          // 底部接听与挂断按钮
          const Positioned(
            bottom: 80,
            left: 75,
            right: 75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CancelChatting(),
                ReceiveVideoChat(),
                ChangeToVoiceChat(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*

*/
