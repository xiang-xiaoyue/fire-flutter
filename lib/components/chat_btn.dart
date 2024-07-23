import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

Color _blurBackgroundColor = const Color.fromARGB(83, 0, 0, 0);

// 切到语音
class ChangeToVoiceChat extends StatelessWidget {
  const ChangeToVoiceChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          //backgroundColor: FireConst.redText,
          backgroundColor: const Color.fromARGB(83, 0, 0, 0),
          radius: 35,
          child: Image.asset(
            "assets/images/to_voice.png",
            width: 34,
            height: 24,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "切到语音通话",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}

// 麦克风已开
class MicrophoneOpenning extends StatelessWidget {
  const MicrophoneOpenning({super.key});

  @override
  Widget build(BuildContext context) {
    return const _ChatingBtnColumn(
      backgroundColor: Colors.white,
      iconName: "microphone.png",
      text: "麦克风已开",
    );
  }
}

class _ChatingBtnColumn extends StatelessWidget {
  final String iconName;
  final String text;
  final Color backgroundColor;
  final Color iconColor;
  final double rotateAngle;
  const _ChatingBtnColumn({
    required this.iconName,
    required this.text,
    this.backgroundColor = Colors.white,
    this.iconColor = Colors.black,
    // ignore: unused_element
    this.rotateAngle = 0.0,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: backgroundColor,
          radius: 35,
          child: Transform.rotate(
            angle: rotateAngle,
            child: Image.asset(
              "assets/images/$iconName",
              width: 32,
              height: 32,
              color: iconColor,
              /*width: 34,height: 24,*/
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}

// 接听通话
class ReceiveVoiceChat extends StatelessWidget {
  const ReceiveVoiceChat({super.key});

  @override
  Widget build(BuildContext context) {
    return _ChatingBtnColumn(
      iconName: "phone.png",
      text: "接听",
      backgroundColor: FireColor.green,
      iconColor: Colors.white,
      rotateAngle: 4.0,
    );
  }
}

// 取消、挂断通话
class CancelChatting extends StatelessWidget {
  const CancelChatting({super.key});

  @override
  Widget build(BuildContext context) {
    return _ChatingBtnColumn(
      iconName: "phone.png",
      text: "取消",
      backgroundColor: FireColor.red,
      iconColor: Colors.white,
    );
  }
}

class SpeakerClosed extends StatelessWidget {
  const SpeakerClosed({super.key});

  @override
  Widget build(BuildContext context) {
    return _ChatingBtnColumn(
      iconName: "speaker_closed.png",
      text: "扬声器已关",
      iconColor: Colors.white,
      backgroundColor: _blurBackgroundColor,
    );
  }
}

// 调出摄像头
class ChangeToCamera extends StatelessWidget {
  const ChangeToCamera({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          //backgroundColor: FireConst.redText,
          backgroundColor: const Color.fromARGB(83, 0, 0, 0),
          radius: 35,
          child: Image.asset(
            "assets/images/camera.png",
            width: 32,
            height: 32,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "切换摄像头",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }
}

// 接受视频聊天
class ReceiveVideoChat extends StatelessWidget {
  const ReceiveVideoChat({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundColor: FireColor.green,
          child: Image.asset(
            "assets/images/video.png",
            width: 32,
            height: 32,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "接听",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
