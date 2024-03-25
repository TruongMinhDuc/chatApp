import 'package:chat_app/cmpts/button.dart';
import 'package:chat_app/cmpts/textField.dart';
import 'package:flutter/material.dart';
import '';

class loginScreen extends StatelessWidget {
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _pwControler = TextEditingController();

  final void Function()? onTapFun;

  loginScreen({super.key, required this.onTapFun});

  // login method

  void logIn() {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Icon(
                Icons.message,
                size: 60,
                color: Theme.of(context).colorScheme.primary,
              ),

              const SizedBox(height: 50),

              //note
              Text(
                "Dang nhap vao tai khoan",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 50),

              //textField
              myTextField(
                hintText: "Email",
                obscureText: false,
                controller: _emailControler,
              ),

              const SizedBox(height: 10),

              myTextField(
                hintText: "Mat khau",
                obscureText: true,
                controller: _pwControler,
              ),
              const SizedBox(height: 25),
              //button
              myButton(
                buttonText: 'Dang nhap',
                fncOnTap: logIn,
              ),
              const SizedBox(height: 25),
              //register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Chua co tai khoan? ",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: onTapFun,
                    child: Text(
                      "Dang ki",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
    throw UnimplementedError();
  }
}
