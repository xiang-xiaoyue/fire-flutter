import 'dart:ui';

import 'package:app/components/chat_btn.dart';
import 'package:app/components/chat_page_avatar.dart';
import 'package:app/components/invite_title.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class VoiceChattingPage extends StatelessWidget {
  const VoiceChattingPage({super.key});

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
                image: AssetImage(
                  "assets/images/bg.jpg",
                ),
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
          //appbar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
              leading: const ScaleLeading(),
              centerTitle: true,
              title: const InviteTitle(
                title: "02:32",
              ),
            ),
          ),
          //中间头像与用户名
          const Positioned(
            top: 180,
            left: 0,
            right: 0,
            child: ChatPageAvatar(),
          ),
          const Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                //todo:这类按钮，可统一抽出组件，加个active字段判断，切换颜色。
                MicrophoneOpenning(),
                CancelChatting(),
                SpeakerClosed(),
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
