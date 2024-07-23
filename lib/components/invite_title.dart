import 'package:flutter/material.dart';

//邀请或被邀请时，appbar里的title
class InviteTitle extends StatelessWidget {
  final String title;
  const InviteTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Color.fromARGB(153, 255, 255, 255),
        fontSize: 16,
      ),
    );
  }
}
