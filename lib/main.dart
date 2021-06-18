import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_login/screen_home.dart';
import 'package:flutter/material.dart';

import 'screen_login.dart';
import 'screen_signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // must
  await Firebase.initializeApp(); // must
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // selalu dari home dulu, kalau blm ada user akan redirect ke login
      home: ScreenHome(title: 'Flutter Demo Home Page'),
      routes: <String, WidgetBuilder>{
        "Login": (BuildContext context) => ScreenLogin(),
        "SignUp": (BuildContext context) => ScreenSignUp(),
      },
    );
  }
}
