import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class CreateGroupPage extends StatelessWidget {
  const CreateGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.black,
        elevation: .2,
        title: Text(
          "创建群聊",
          style: TextStyle(
            color: FireColor.textColor,
            fontSize: 20,
          ),
        ),
        leading: const CancelLeading(),
      ),
      body: ConstrainedBox(
        //note:
        // constrainedBox->stack-> SingleChildScrollView和Positioned:
        //SingleChildScrollView放图标、输入框、用户列表（可滑动），
        //positioned放“创建”按钮
        // 点击输入框，弹出小键盘，小键盘会挡住下面的内容，不会报pixel越界错误。
        constraints: const BoxConstraints.expand(),
        child: const Stack(
          children: [
            SingleChildScrollView(
              padding: EdgeInsets.only(
                bottom: 100,
                left: 16,
                right: 16,
                top: 30,
              ),
              child: Column(
                children: [
                  // 群图标
                  _GroupAvatar(),
                  SizedBox(height: 30),

                  // 输入群名的输入框
                  _InputGroupName(),
                  SizedBox(height: 20),

                  //用户列表的标题
                  _UserListTitle(),
                  // 用户列表
                  _UserList(),
                ],
              ),
            ),
            // "创建"按钮
            _CreateGroupBtn(),
          ],
        ),
      ),
    );
  }
}

class _UserList extends StatelessWidget {
  const _UserList();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 15,
      itemBuilder: (context, index) {
        return _SelectUserInGroup(
          isInGroup: index % 3 == 0 ? true : false,
        );
      },
    );
  }
}

class _UserListTitle extends StatelessWidget {
  const _UserListTitle();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        "用户",
        style: TextStyle(
          color: FireColor.textColor,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _InputGroupName extends StatelessWidget {
  const _InputGroupName();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      decoration: BoxDecoration(
        color: const Color(0xfff3f4f5),
        borderRadius: BorderRadius.circular(23),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: "群名称",
          isDense: true,
          filled: true,
          fillColor: const Color(0xfff3f4f5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}

class _GroupAvatar extends StatelessWidget {
  const _GroupAvatar();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      height: 98,
      decoration: BoxDecoration(
        color: FireColor.yellow,
        borderRadius: BorderRadius.circular(20),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(25, 30, 40, 50),
            offset: Offset(0, 18),
            blurRadius: 20,
          ),
        ],
      ),
      child: Image.asset(
        "assets/images/group_chat.png",
        width: 80,
        height: 80,
      ),
    );
  }
}

class _CreateGroupBtn extends StatelessWidget {
  const _CreateGroupBtn();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Container(
          alignment: Alignment.center,
          height: 40,
          decoration: BoxDecoration(
            color: FireColor.yellow,
            borderRadius: BorderRadius.circular(5),
          ),
          margin: const EdgeInsets.only(bottom: 15),
          child: Text(
            "创建(3)",
            style: TextStyle(
              fontSize: 16,
              color: FireColor.textColor,
            ),
          ),
        ),
      ),
    );
  }
}

class _SelectUserInGroup extends StatelessWidget {
  final bool isInGroup;
  const _SelectUserInGroup({required this.isInGroup});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: FireColor.yellow,
            radius: 12,
            child: isInGroup
                ? Image.asset(
                    "assets/images/select_in_group.png",
                  )
                : null,
          ),
          const SizedBox(width: 16),
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              FireColor.avatar,
              width: 40,
              height: 40,
            ),
          ),
          const SizedBox(width: 16),
          const Text(
            "断水流",
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
