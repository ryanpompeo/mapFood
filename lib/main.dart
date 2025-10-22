import 'package:flutter/material.dart';
import 'package:map_food/pages/search.dart';
import 'package:map_food/pages/user_page_home.dart';
import 'package:map_food/pages/view_store.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: ThemeData(fontFamily: 'inter'),
      initialRoute: "/userHome",
      routes: {
        '/userHome': (context) => UserPageHome(),
        '/viewStore': (context) => ViewStore(),
        '/search': (ctx) => Search(),
      },
    );
  }
}
