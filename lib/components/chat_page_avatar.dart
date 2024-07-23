import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class ChatPageAvatar extends StatelessWidget {
  const ChatPageAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(FireColor.avatar),
          radius: 50,
        ),
        const SizedBox(height: 12),
        const Text(
          "断水流",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ],
    );
  }
}
