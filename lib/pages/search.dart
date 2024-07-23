import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Column(
            children: [
              //搜索框
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: .1, color: Colors.blueGrey),
                  ),
                ),
                height: 44,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: const Color(0xfff3f4f6),
                          filled: true,
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 6),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                      padding: const EdgeInsets.only(left: 15),
                      child: CancelLeading(),
                    ),
                  ],
                ),
              ),

              // 用户列表
              const _ListTitle(text: "用户"),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10));
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const _SearchPageItem();
                },
              ),

              //群组列表
              const _ListTitle(text: "群组"),
              ListView.separated(
                separatorBuilder: (context, index) {
                  return const Padding(
                      padding: EdgeInsets.symmetric(vertical: 10));
                },
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return const _SearchPageItem();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchPageItem extends StatefulWidget {
  const _SearchPageItem();

  @override
  State<_SearchPageItem> createState() => _SearchPageItemState();
}

class _SearchPageItemState extends State<_SearchPageItem> {
  Widget _matchedName(String entirText, String matchedText) {
    List<String> textList = entirText.split(matchedText);
    TextStyle s1 = TextStyle(color: FireColor.textColor, fontSize: 18);
    TextStyle s2 = const TextStyle(color: Color(0xff54afff), fontSize: 18);

    List<TextSpan> spanList = [];

    for (var i = 0; i < textList.length; i++) {
      if (textList[i].trim() != "") {
        spanList.addAll([
          TextSpan(text: textList[i], style: s1),
          TextSpan(text: matchedText, style: s2),
        ]);
      } else if (textList[i].trim() == "" && i != textList.length - 1) {
        spanList.addAll([
          TextSpan(text: matchedText, style: s2),
        ]);
      }
    }
    return Text.rich(TextSpan(children: spanList));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(FireColor.avatar, width: 40, height: 40),
        ),
        const SizedBox(width: 16),
        _matchedName("大力王大力王", "王"),
        const Spacer(),
        const _SearchPageItemBtn(),
      ],
    );
  }
}

class _SearchPageItemBtn extends StatefulWidget {
  const _SearchPageItemBtn();

  @override
  State<_SearchPageItemBtn> createState() => _SearchPageItemBtnState();
}

class _SearchPageItemBtnState extends State<_SearchPageItemBtn> {
  bool isFriend = false;
  @override
  Widget build(BuildContext context) {
    TextStyle sendMsgTextStyle =
        TextStyle(color: FireColor.textColor, fontSize: 12);
    BoxDecoration sendMsgBtnStyle = BoxDecoration(
      color: FireColor.yellow,
      borderRadius: BorderRadius.circular(12),
    );

    TextStyle addFriendTextStyle =
        const TextStyle(color: Color(0xff4aaaff), fontSize: 12);
    BoxDecoration addFriendBtnStyle = BoxDecoration(
      color: const Color.fromARGB(25, 74, 170, 255),
      borderRadius: BorderRadius.circular(12),
    );

    return GestureDetector(
      onTap: () {
        setState(() {
          isFriend = !isFriend;
        });
      },
      child: Container(
        width: 60,
        height: 24,
        alignment: Alignment.center,
        decoration: isFriend ? sendMsgBtnStyle : addFriendBtnStyle,
        child: Text(
          isFriend ? "发消息" : "加好友",
          style: isFriend ? sendMsgTextStyle : addFriendTextStyle,
        ),
      ),
    );
  }
}

class _ListTitle extends StatelessWidget {
  final String text;
  const _ListTitle({required this.text});

  @override
  Widget build(BuildContext context) {
    var listTileStyle = TextStyle(
      color: FireColor.textColor,
      fontSize: 22,
      letterSpacing: -0.75,
      fontWeight: FontWeight.w600,
    );
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 20),
      title: Text(
        text,
        style: listTileStyle,
      ),
    );
  }
}
