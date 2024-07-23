import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class SendRequestAddFriendPage extends StatefulWidget {
  const SendRequestAddFriendPage({super.key});

  @override
  State<SendRequestAddFriendPage> createState() =>
      _SendRequestAddFriendPageState();
}

class _SendRequestAddFriendPageState extends State<SendRequestAddFriendPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                leading: LeadingPng(),
                actions: [
                  Image.asset("assets/images/more.png"),
                  const SizedBox(width: 16),
                ],
              ),
            ),
            Positioned(
              top: 186,
              left: 0,
              bottom: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 84, bottom: 30),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text(
                        "左左左表妹",
                        style: TextStyle(
                          fontSize: 26,
                          color: FireColor.textColor,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 28),
                      child: TextField(
                        minLines: 3,
                        maxLines: 3,
                        decoration: InputDecoration(
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          fillColor: FireColor.inputGrey,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            alignment: Alignment.center,
                            width: 86,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(25, 39, 40, 50),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text(
                              "取消",
                              style: TextStyle(
                                fontSize: 16,
                                color: FireColor.textColor,
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          Expanded(
                            flex: 1,
                            child: Container(
                              alignment: Alignment.center,
                              height: 40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: FireColor.yellow,
                              ),
                              child: Text(
                                "发送",
                                style: TextStyle(
                                  color: FireColor.textColor,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 30,
              top: 126,
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(FireColor.avatar),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
            Positioned(
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Row(
                              children: [
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
*/
