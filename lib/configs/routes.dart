import 'package:app/pages/be_invited_in_using.dart';
import 'package:app/pages/be_invited_video.dart';
import 'package:app/pages/be_invited_voice.dart';
import 'package:app/pages/chat.dart';
import 'package:app/pages/chat_list.dart';
import 'package:app/pages/create_group.dart';
import 'package:app/pages/edit_group.dart';
import 'package:app/pages/group_detail.dart';
import 'package:app/pages/login.dart';
import 'package:app/pages/mine_detail.dart';
import 'package:app/pages/register.dart';
import 'package:app/pages/request_video_chat.dart';
import 'package:app/pages/reset_pwd.dart';
import 'package:app/pages/retrieve_pwd.dart';
import 'package:app/pages/search.dart';
import 'package:app/pages/send_request_add_friend.dart';
import 'package:app/pages/user_detail.dart';
import 'package:app/pages/video_chatting.dart';
import 'package:app/pages/voice_chatting.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> routes = [
  GoRoute(
    name: "chat_list",
    path: "/chat_list",
    builder: (context, state) => const ListPage(),
  ),
  GoRoute(
    name: "user_detail",
    path: "/user_detail",
    builder: (context, state) => UserDetailPage(
      idStr: state.uri.queryParameters["id"].toString(),
    ),
  ),
  GoRoute(
    name: "search",
    path: "/search",
    builder: (context, state) => const SearchPage(),
  ),
  GoRoute(
    name: "mine",
    path: "/mine",
    builder: (context, state) => const MineDetailPage(),
  ),
  GoRoute(
    name: "chat",
    path: "/chat",
    builder: (context, state) => ChatPage(
      idStr: state.uri.queryParameters["id"].toString(),
    ),
  ),
  GoRoute(
    name: "be_invited_in_using",
    path: "/be_invited_in_using",
    builder: (context, state) => const BeInvitedInUsingPage(),
  ),
  GoRoute(
    name: "be_invited_video",
    path: "/be_invited_video",
    builder: (context, state) => const BeInvitedVideoPage(),
  ),
  GoRoute(
    name: "be_invited_voice",
    path: "/be_invited_voice",
    builder: (context, state) => const BeInvitedVoicePage(),
  ),
  GoRoute(
    name: "create_group",
    path: "/create_group",
    builder: (context, state) => const CreateGroupPage(),
  ),
  GoRoute(
    name: "edit_group",
    path: "/edit_group",
    builder: (context, state) => const EditGroupPage(),
  ),
  GoRoute(
    name: "group_detail",
    path: "/group_detail",
    builder: (context, state) => const GroupDetailPage(),
  ),
  GoRoute(
    name: "login",
    path: "/login",
    builder: (context, state) => const LoginPage(),
  ),
  GoRoute(
    name: "register",
    path: "/register",
    builder: (context, state) => const RegisterPage(),
  ),
  GoRoute(
    name: "request_video_chat",
    path: "/request_video_chat",
    builder: (context, state) => const RequestVideoChatPage(),
  ),
  GoRoute(
    name: "reset_pwd",
    path: "/reset_pwd",
    builder: (context, state) => const ResetPwdPage(),
  ),
  GoRoute(
    name: "retrieve_pwd",
    path: "/retrieve_pwd",
    builder: (context, state) => const RetrievePwdPage(),
  ),
  GoRoute(
    name: "send_request_add_friend",
    path: "/send_request_add_friend",
    builder: (context, state) => const SendRequestAddFriendPage(),
  ),
  GoRoute(
    name: "video_chatting",
    path: "/video_chatting",
    builder: (context, state) => const VideoChattingPage(),
  ),
  GoRoute(
    name: "voice_chatting",
    path: "/voice_chatting",
    builder: (context, state) => const VoiceChattingPage(),
  ),
];
