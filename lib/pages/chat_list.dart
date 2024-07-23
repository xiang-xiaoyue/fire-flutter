import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Map<String, dynamic> map = {
  "使用中被邀请": "be_invited_in_using",
  "被邀请视频": "be_invited_video",
  "被邀请语音": "be_invited_voice",
  "创建群": "create_group",
  "编辑群": "edit_group",
  "群详情": "group_detail",
  "登录": "login",
  "注册": "register",
  "请求视频聊天": "request_video_chat",
  "重置密码": "reset_pwd",
  "找回密码": "retrieve_pwd",
  "发送加好友请求": "send_request_add_friend",
  "视频聊天": "video_chatting",
  "语音聊天": "voice_chatting",
};
List<PopupMenuItem<String>> buildItems() {
  return map.keys.toList().map((e) {
    return PopupMenuItem(
      value: map[e].toString(),
      child: Wrap(
        spacing: 10,
        children: [
          //Icon(map[e], color: Colors.blue),
          Text(e),
        ],
      ),
    );
  }).toList();
}

// 列表页
class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 28,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        currentIndex: 0,
        backgroundColor: FireColor.grey,
        onTap: (v) {},
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/chat.png"),
            label: "聊天",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/chat.png"),
            label: "yike",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/images/unknown.png"),
            label: "未知",
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              bottomOpacity: .1,
              elevation: 0,
              shadowColor: const Color.fromARGB(25, 0, 0, 0),
              leading: Container(
                padding: EdgeInsets.only(left: 16),
                child: GestureDetector(
                  onTap: () {
                    context.pushNamed("mine");
                  },
                  child: UnconstrainedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        FireColor.avatar,
                        fit: BoxFit.cover,
                        width: 34,
                        height: 34,
                      ),
                    ),
                  ),
                ),
              ),
              centerTitle: true,
              title: Image.asset(
                "assets/images/fire.png",
                width: 44,
                height: 21,
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    context.pushNamed("search");
                  },
                  child: Image.asset(
                    "assets/images/search.png",
                    width: 26,
                    height: 26,
                  ),
                ),
                const SizedBox(width: 20),
                PopupMenuButton(
                  itemBuilder: (context) => buildItems(),
                  elevation: 1,
                  onSelected: (v) {
                    context.pushNamed(v);
                  },
                  onCanceled: () => print("cancel"),
                  child: Image.asset(
                    "assets/images/add_group.png",
                    width: 24,
                    height: 24,
                  ),
                ),
                const SizedBox(width: 16),
              ],
            ),
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) {
                return const SizedBox(height: 20);
              },
              padding: const EdgeInsets.only(top: 18, left: 16, right: 16),
              itemCount: 100,
              itemBuilder: (context, index) {
                return const _ListPageItem();
              },
            )
          ],
        ),
      ),
    );
  }
}

class _ListPageItem extends StatefulWidget {
  const _ListPageItem();

  @override
  State<_ListPageItem> createState() => _ListPageItemState();
}

class _ListPageItemState extends State<_ListPageItem> {
  final TextStyle _userNameStyle =
      const TextStyle(color: Color(0xff272832), fontSize: 18);

  final TextStyle _signStyle =
      const TextStyle(color: Color.fromARGB(60, 39, 40, 50), fontSize: 14);

  final TextStyle _timeTextStyle =
      const TextStyle(color: Color.fromARGB(40, 39, 40, 50), fontSize: 12);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: GestureDetector(
              onTap: () {
                context.pushNamed(
                  "user_detail",
                  queryParameters: {"id": 1.toString()},
                );
              },
              child: Image.network(FireColor.avatar, width: 48, height: 48)),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: GestureDetector(
            onTap: () {
              //note:在routes里配置如下
/*
    builder: (context, state) => ChatPage(
      idStr: state.uri.queryParameters["id"].toString(),
    ),
// 直接把路径里的id值传给chat页面。
 */
              //这里跳转时加上queryParameters,在chat页面可获得id
              context.pushNamed("chat",
                  queryParameters: {"id": 1.toString()}).toString();
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("断水流", style: _userNameStyle),
                    Text("9:12", style: _timeTextStyle),
                  ],
                ),
                Text("这就就是你的问题了，就是你的问题了，是你的问题了，不用点加速",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: _signStyle),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
