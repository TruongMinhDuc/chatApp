
import 'package:flutter/material.dart';

import '../cmpts/button.dart';
import '../cmpts/textField.dart';
import '../services/auth/auth_Service.dart';

class registerScreeen extends StatelessWidget {
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _pwControler = TextEditingController();
  final TextEditingController _conPwControler = TextEditingController();

  final void Function()? onTapFun;

  registerScreeen({super.key, required this.onTapFun});

  // login method

  void register(BuildContext context) {
    final _auth = authService();

    if (_pwControler.text == _conPwControler.text) {
      try {
        _auth.signUpWithEmailAndPassword(
            _emailControler.text, _pwControler.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => const AlertDialog(
          title: Text("Mat khau nhap lai khong trung khop"),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
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
                "Tao tai khoan moi",
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
              // mat khau
              myTextField(
                hintText: "Mat khau",
                obscureText: true,
                controller: _pwControler,
              ),
              const SizedBox(height: 10),
              //Nhap lai mat khau
              myTextField(
                hintText: "Nhap lai mat khau",
                obscureText: true,
                controller: _conPwControler,
              ),
              const SizedBox(height: 25),
              //button
              myButton(
                buttonText: 'Register',
                fncOnTap: () => register(context),
              ),
              const SizedBox(height: 25),
              //register
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Da co tai khoan? ",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                  ),
                  GestureDetector(
                    onTap: onTapFun,
                    child: Text(
                      "Dang nhap",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
