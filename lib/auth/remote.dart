import 'package:chat_app/pages/login.dart';
import 'package:chat_app/pages/regsiter.dart';
import 'package:flutter/material.dart';

class loginOrRegister extends StatefulWidget {
  const loginOrRegister({super.key});

  @override
  State<loginOrRegister> createState() => _loginOrRegisterState();
}

class _loginOrRegisterState extends State<loginOrRegister> {
  bool showLoginScreen = true;

  void toggleScreen() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return loginScreen(
        onTapFun: toggleScreen,
      );
    } else {
      return registerScreeen(
        onTapFun: toggleScreen,
      );
    }
  }
}
