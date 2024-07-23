import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class GroupDetailPage extends StatelessWidget {
  const GroupDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: LeadingPng(),
        actions: [
          Image.asset(
            "assets/images/edit_group.png",
            width: 26,
            height: 6,
            color: Colors.black,
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 100),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "开发者交流群",
                  style: TextStyle(
                    color: FireColor.textColor,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "2019/12/12",
                  style: TextStyle(
                    fontSize: 14,
                    color: FireColor.lightGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              "特别的爱给特别的你，就阿什顿库，大哭高科技啊老哭高科技啊老大。领导咖啡什顿库，大哭高科技啊老哭高科…",
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: TextStyle(
                color: FireColor.textColor,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "群成员",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: FireColor.textColor,
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  style: const ButtonStyle(
                    padding: WidgetStatePropertyAll(EdgeInsets.only(right: 0)),
                  ),
                  iconAlignment: IconAlignment.end,
                  onPressed: null,
                  label: Text(
                    "成员管理",
                    style: TextStyle(
                      color: FireColor.lightGrey,
                      fontSize: 16,
                    ),
                  ),
                  icon: const Icon(Icons.chevron_right),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Wrap(
              spacing: 16,
              runSpacing: 10,
              children: [
                _MemberItem(avatar: FireColor.avatar, name: "断水流"),
                _MemberItem(avatar: FireColor.avatar, name: "断水流"),
                _MemberItem(avatar: FireColor.avatar, name: "断水流"),
                _MemberItem(avatar: FireColor.avatar, name: "今天吃什么"),
                _MemberItem(avatar: FireColor.avatar, name: "风信子"),
                _MemberItem(avatar: FireColor.avatar, name: "计划中"),
                _MemberItem(avatar: FireColor.avatar, name: "刘备"),
                _MemberItem(avatar: FireColor.avatar, name: "saber"),
                _MemberItem(avatar: FireColor.avatar, name: "afsdl"),
                _MemberItem(avatar: FireColor.avatar, name: "今天开始比赛"),
                _MemberItem(avatar: FireColor.avatar, name: "今天吃什么"),
                _MemberItem(avatar: FireColor.avatar, name: "风信子"),
                _MemberItem(avatar: FireColor.avatar, name: "计划中"),
                _MemberItem(avatar: FireColor.avatar, name: "刘备"),
                _MemberItem(avatar: FireColor.avatar, name: "saber"),
                _MemberItem(avatar: FireColor.avatar, name: "afsdl"),
                _MemberItem(avatar: FireColor.avatar, name: "今天开始比赛"),
                _MemberItem(avatar: FireColor.avatar, name: "今天吃什么"),
                _MemberItem(avatar: FireColor.avatar, name: "风信子"),
                _MemberItem(avatar: FireColor.avatar, name: "计划中"),
                _MemberItem(avatar: FireColor.avatar, name: "刘备"),
                _MemberItem(avatar: FireColor.avatar, name: "saber"),
                _MemberItem(avatar: FireColor.avatar, name: "afsdl"),
                _MemberItem(avatar: FireColor.avatar, name: "今天开始比赛"),
                _MemberItem(avatar: FireColor.avatar, name: "断水流"),
                _MemberItem(avatar: FireColor.avatar, name: "今天吃什么"),
                _MemberItem(avatar: FireColor.avatar, name: "风信子"),
                _MemberItem(avatar: FireColor.avatar, name: "计划中"),
                _MemberItem(avatar: FireColor.avatar, name: "刘备"),
                _MemberItem(avatar: FireColor.avatar, name: "saber"),
                _MemberItem(avatar: FireColor.avatar, name: "afsdl"),
                _MemberItem(avatar: FireColor.avatar, name: "今天开始比赛"),
                const _MemberItem(name: "邀请"),
              ],
            ),
            const SizedBox(height: 10),
            const _InfoItem(label: "群名称", content: "开发者交流群"),
            const _InfoItem(label: "群公告", content: "今天是个特别的日子，今天建群了"),
            const _InfoItem(label: "群内名", content: "我是群主"),
            const _SetItem(label: "消息免打扰"),
            const SizedBox(height: 10),
            const TextButton(
              onPressed: null,
              child: Text(
                "退出群聊",
                style: TextStyle(
                  color: Color(0xffff5d5b),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SetItem extends StatefulWidget {
  final String label;
  const _SetItem({required this.label});

  @override
  State<_SetItem> createState() => _SetItemState();
}

class _SetItemState extends State<_SetItem> {
  bool _light = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Text(
            widget.label,
            style: TextStyle(color: FireColor.textColor, fontSize: 16),
          ),
          const Spacer(),
          Switch(
            activeColor: FireColor.yellow,
            inactiveTrackColor: Colors.grey[300],
            inactiveThumbColor: Colors.black,
            focusColor: Colors.blue,
            thumbColor: const WidgetStatePropertyAll(Colors.white),
            value: _light,
            onChanged: (v) {
              setState(() {});
              _light = v;
            },
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final String label;
  final String content;
  const _InfoItem({required this.label, required this.content});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Row(
        children: [
          Text(
            label,
            style: TextStyle(color: FireColor.textColor, fontSize: 16),
          ),
          const SizedBox(width: 16),
          Text(
            content,
            style: TextStyle(color: FireColor.lightGrey, fontSize: 16),
          ),
          const Spacer(),
          Icon(Icons.chevron_right, color: FireColor.lightGrey),
        ],
      ),
    );
  }
}

class _MemberItem extends StatelessWidget {
  final String avatar;
  final String name;
  const _MemberItem({this.avatar = "", required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: avatar == ""
              ? Container(
                  alignment: Alignment.center,
                  color: Colors.yellow,
                  width: 52,
                  height: 52,
                  child: Image.asset(
                    "assets/images/group.png",
                    width: 20,
                    height: 20,
                    color: Colors.black,
                  ),
                )
              : Image.network(
                  FireColor.avatar,
                  width: 52,
                  height: 52,
                  fit: BoxFit.cover,
                ),
        ),
        const SizedBox(height: 4),
        Text(
          //昵称过长要截断
          //name.trim().length>5 ? name.trim().runes.toList()[0,3].toString() :name.trim(),
          name.length > 3 ? "${name.substring(0, 2)}..." : name,
          style: TextStyle(
            fontSize: 14,
            color: FireColor.textColor,
          ),
        ),
      ],
    );
  }
}
