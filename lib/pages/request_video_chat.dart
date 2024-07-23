import 'package:app/components/chat_btn.dart';
import 'package:app/components/chat_page_avatar.dart';
import 'package:app/components/invite_title.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class RequestVideoChatPage extends StatelessWidget {
  const RequestVideoChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/images/bg.jpg"),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            leading: const ScaleLeading(),
            centerTitle: true,
            title: const InviteTitle(title: "等待对方接受邀请...")),
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 75, vertical: 40),
              child: const ChatPageAvatar(),
            ),
            const Positioned(
              left: 75,
              right: 75,
              bottom: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CancelChatting(),
                  ChangeToVoiceChat(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
