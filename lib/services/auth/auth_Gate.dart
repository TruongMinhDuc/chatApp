
import 'package:chat_app/services/auth/remote.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../pages/homePage.dart';


class authGate extends StatelessWidget {
  const authGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          //da dang nhap
          if(snapshot.hasData) {
            return homePage();
          }
          else{
            return loginOrRegister();
          }
        },
      ),
    );
  }
}
