import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EditGroupPage extends StatelessWidget {
  const EditGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            context.pop();
          },
          child: Text(
            "取消",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 2.75, //设置行高为2.75倍，让文字与title水平对齐( 44/16 )
              color: FireColor.textColor,
              fontSize: 16,
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          "编辑群",
          style: TextStyle(
            color: FireColor.textColor,
            fontSize: 20,
          ),
        ),
        actions: [
          Text(
            "确定",
            style: TextStyle(
              color: FireColor.blue,
              fontSize: 16,
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        child: TextField(
          maxLines: 10,
          minLines: 10,
          decoration: InputDecoration(
            fillColor: FireColor.inputGrey,
            filled: true,
            hintText: "这是群名称",
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
