import 'dart:ui';

import 'package:app/configs/const.dart';
import 'package:flutter/material.dart';

class UserDetailPage extends StatelessWidget {
  final String idStr;
  const UserDetailPage({super.key, required this.idStr});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Image.network(FireConst.avatar),
          Center(
            //note: 毛玻璃
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Opacity(
                opacity: .2,
                child: SizedBox(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.network(
                    FireColor.avatar,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              //child: Image.network(FireConst.avatar),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: AppBar(
              leading: const LeadingPng(),
              backgroundColor: Colors.transparent,
              actions: [
                Image.asset("assets/images/more.png"),
                const SizedBox(width: 16),
              ],
            ),
          ),
          Column(
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  margin: const EdgeInsets.only(top: 120),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    border: Border.all(
                      width: 3,
                      color: Colors.white,
                      style: BorderStyle.solid,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: Image.network(
                      fit: BoxFit.cover,
                      FireColor.avatar,
                    ),
                    //borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Text(
                  "左左左表妹",
                  style: TextStyle(
                    color: FireColor.textColor,
                    fontSize: 26,
                  ),
                ),
              ),
              Text(
                "昵称：很好搭档,id:$idStr",
                style: TextStyle(color: FireColor.textColor, fontSize: 14),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  "夜，结束了一天的喧嚣后安静下来，伴随着远处路灯那微弱的光。风，毫无预兆地席卷整片旷野，撩动人的思绪万千。",
                  style: TextStyle(
                    height: 1.7,
                    color: FireColor.textColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w200,
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 40,
            left: 30,
            right: 30,
            child: Container(
              alignment: Alignment.center,
              height: 40,
              decoration: BoxDecoration(
                color: FireColor.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(
                "加为好友",
                style: TextStyle(
                  color: FireColor.textColor,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
