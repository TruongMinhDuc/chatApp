import 'package:flutter/material.dart';

class chatPage extends StatelessWidget {
  final String recevierEmail;

  const chatPage({
    super.key,
    required this.recevierEmail,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recevierEmail),
      ),
    );
  }
}
