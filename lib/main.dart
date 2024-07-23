import 'package:app/configs/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

var _router = GoRouter(routes: routes, initialLocation: "/chat_list");

void main() {
  SystemUiOverlayStyle style = const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  );
  SystemChrome.setSystemUIOverlayStyle(style);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      theme: ThemeData(
        primaryColor: Colors.transparent,
        navigationBarTheme: const NavigationBarThemeData(
          backgroundColor: Colors.transparent,
        ),
        //scaffoldBackgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white, //note：设置整个应用的背景色
        appBarTheme: const AppBarTheme(
          toolbarHeight: 44, //统一修改appbar高度为44
          scrolledUnderElevation: 0, //note:底下滑动时，appbar会变色，加上这个防止变色。
          backgroundColor: Colors.white,
        ),
      ),
      themeMode: ThemeMode.light,
      title: "fire",
      routerConfig: _router,
      //home: const ListPage(),
    );
  }
}
