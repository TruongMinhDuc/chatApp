import 'package:flutter/material.dart';
import '';

class loginScreen extends StatelessWidget{
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body:  Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
              Icon(
                  Icons.message,
                  size: 60,
                  color: Theme.of(context).colorScheme.primary,
              ),
            //message

            //textField

            //button

            //register

          ],
        ),
      )
    );
    throw UnimplementedError();
  }
}