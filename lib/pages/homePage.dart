import 'package:chat_app/cmpts/myDrawer.dart';
import 'package:chat_app/cmpts/userTiles.dart';
import 'package:chat_app/pages/chatPage.dart';
import 'package:chat_app/services/auth/auth_Service.dart';
import 'package:chat_app/services/chat/chatService.dart';
import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  homePage({super.key});

  final chatService _chatService = chatService();
  final authService _authService = authService();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trang chu"),
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey,
        elevation: 0,
      ),
      drawer: const myDrawer(),
      body: _buildUserList(),
    );
  }

  //user list
  Widget _buildUserList() {
    return StreamBuilder(
      stream: _chatService.getUsersStream(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Text("Error");
        }

        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Text("Loading");
        }

        return ListView(
          children: snapshot.data!
              .map<Widget>((userData) => _buildUserItem(userData, context))
              .toList(),
        );
      },
    );
  }

  Widget _buildUserItem(Map<String, dynamic> userData, BuildContext context) {
    if(userData["email"] != _authService.getCurrentUser()!.email) {
      return userTile(
        text: userData["email"],
        onTap: () {
          Navigator.push(
            (context),
            MaterialPageRoute(
              builder: (context) => chatPage(
                recevierEmail: userData["email"],
                recevierId: userData["uid"],
              ),
            ),
          );
        },
      );
    }
    else {
      return Container();
    }
  }
}
