import 'package:app/components/chat_btn.dart';
import 'package:app/components/invite_title.dart';
import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class VideoChattingPage extends StatelessWidget {
  const VideoChattingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                leading: const ScaleLeading(),
                title: const InviteTitle(title: "00:22"),
                centerTitle: true,
              ),
              Positioned(
                right: 4,
                top: 0,
                child: Image.network(
                  FireColor.avatar,
                  width: 100,
                  height: 168,
                  alignment: Alignment.center,
                  fit: BoxFit.cover,
                ),
              ),
              const Positioned(
                bottom: 80,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ChangeToVoiceChat(),
                    CancelChatting(),
                    ChangeToCamera(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
