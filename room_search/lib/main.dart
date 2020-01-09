import "package:flutter/material.dart";
import 'package:room_search/login/root_page.dart';
import 'package:room_search/login/auth.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: RootPage(auth: Auth()),
    );
  }
}