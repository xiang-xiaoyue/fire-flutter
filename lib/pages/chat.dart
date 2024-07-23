import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  final String idStr;
  const ChatPage({super.key, required this.idStr});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("断水流:$idStr"),
        backgroundColor: FireColor.background,
        leadingWidth: 24,
        leading: LeadingPng(),
        centerTitle: true,
        actions: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              FireColor.avatar,
              width: 34,
              height: 34,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.only(
                        top: 17, bottom: 82, left: 16, right: 16),
                    shrinkWrap: true,
                    itemCount: 300,
                    itemBuilder: (context, index) {
                      return _ChatItem(
                        content:
                            "x开发的，还要开发多久，一天前端，一天后端，一天联调，再加一天测试，再加上线发布和运维也是一天。应该够了！",
                        isSender: index % 3 == 0 ? true : false,
                        contentType: index % 5 == 0
                            ? "image"
                            : index % 7 == 0
                                ? "time"
                                : "text",
                      );
                    },
                  ),
                ),
              ],
            ),
            const Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _ChatPageBottom(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ChatItem extends StatelessWidget {
  final String content;
  final String imgUrl;
  final bool isSender;
  final String contentType; // image | text | time
  const _ChatItem({
    super.key,
    this.contentType = "time",
    this.content = "x开发的，还要开发多久，一天前端，一天后端，一天联调，再加一天测试，再加上线发布和运维也是一天。应该够了！",
    this.isSender = false,
    this.imgUrl = "",
  });

  final BorderRadius _r1 = const BorderRadius.only(
      topRight: Radius.circular(10),
      bottomRight: Radius.circular(10),
      bottomLeft: Radius.circular(10));

  final BorderRadius _r2 = const BorderRadius.only(
      topLeft: Radius.circular(10),
      bottomRight: Radius.circular(10),
      bottomLeft: Radius.circular(10));

  @override
  Widget build(BuildContext context) {
    if (contentType == "time") {
      return const _ChatPageTime();
    } else {
      return Container(
        margin: const EdgeInsets.only(bottom: 20),
        child: Row(
          textDirection: isSender ? TextDirection.rtl : TextDirection.ltr,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(FireColor.avatar, width: 40, height: 40),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Container(
                alignment:
                    isSender ? Alignment.centerRight : Alignment.centerLeft,
                decoration: contentType == "text"
                    ? BoxDecoration(
                        color: isSender ? FireColor.yellow : Colors.white,
                        borderRadius: isSender ? _r1 : _r2,
                      )
                    : null,
                padding: const EdgeInsets.only(
                  top: 8,
                  bottom: 8,
                  left: 12,
                  right: 11,
                ),
                child: contentType == "text"
                    ? Text(
                        content,
                        textAlign: TextAlign.left,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 16,
                          color: FireColor.textColor,
                        ),
                      )
                    : ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          FireColor.avatar,
                          height: 160,
                          fit: BoxFit.fitHeight,
                        ),
                      ),
              ),
            ),
            const SizedBox(width: 10),
            const SizedBox(width: 40, height: 40),
          ],
        ),
      );
    }
  }
}

class _ChatPageTime extends StatelessWidget {
  const _ChatPageTime();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(bottom: 20),
      child: const Text(
        "11月4日 14:23",
        style: TextStyle(
          color: Color.fromARGB(80, 39, 40, 50),
          fontSize: 12,
        ),
      ),
    );
  }
}

class _ChatPageBottom extends StatelessWidget {
  const _ChatPageBottom();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 7, bottom: 29, left: 16, right: 16),
      color: FireColor.background,
      child: Row(
        children: [
          Image.asset(
            "assets/images/voice.png",
            width: 28,
            height: 28,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: TextField(
              maxLines: 5,
              minLines: 1,
              decoration: InputDecoration(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                  borderSide: BorderSide.none,
                ),
                fillColor: const Color(0xffffffff),
                filled: true,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Image.asset(
            "assets/images/face.png",
            width: 28,
            height: 28,
          ),
          const SizedBox(width: 10),
          Image.asset(
            "assets/images/add.png",
            width: 28,
            height: 28,
          ),
        ],
      ),
    );
  }
}
