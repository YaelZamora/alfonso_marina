import 'package:alfonso_marina/src/pages/home_page.dart';
import 'package:alfonso_marina/src/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'login': (_) => LoginPage(),
        'home': (_) => HomePage(),
      },
      theme: ThemeData().copyWith(
        primaryColor: Colors.brown,
      ),
    );
  }
}
