import 'package:learn/apps/todo/trash/sign_up.dart';
import 'package:learn/apps/todo/trash/tutor_login.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  final bool val;
  const AuthPage(this.val, {Key? key}) : super(key: key);

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool a = true;
  void to() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    // a=!a;
    return a ? LogIN_screen(to) : SignUpScreen(to);
  }
}
