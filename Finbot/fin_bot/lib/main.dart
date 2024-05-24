import 'package:fin_bot/Login_Page.dart';
import 'package:fin_bot/Welcome_Screen.dart';
import 'package:flutter/material.dart';

import 'Chat_Screen.dart';
import 'Splash_Screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: WelcomeScreen()
    );
  }
}