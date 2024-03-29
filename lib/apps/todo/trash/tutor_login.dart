import 'package:learn/apps/todo/codes.dart';
import 'package:learn/apps/todo/customer_color.dart';
import 'package:flutter/material.dart';

class LogIN_screen extends StatefulWidget {
  final VoidCallback show;

  const LogIN_screen(this.show, {Key? key}) : super(key: key);

  @override
  State<LogIN_screen> createState() => _LogIN_screenState();
}

class _LogIN_screenState extends State<LogIN_screen> {
  final FocusNode _focusNode1 = FocusNode();
  final FocusNode _focusNode2 = FocusNode();

  final email = TextEditingController();
  final password = TextEditingController();
  final passwordConfirm = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focusNode1.addListener(() {
      setState(() {});
    });
    super.initState();
    _focusNode2.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: custom_grey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              images(),
              const SizedBox(height: 50),
              textField(email, _focusNode1, 'email', Icons.email),
              const SizedBox(height: 10),
              textField(password, _focusNode2, "password", Icons.password),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Don't have Account?",
                      style: TextStyle(color: Colors.grey[700], fontSize: 14),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: widget.show,
                      child: const Text(
                        "Sign UP",
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              loginButton('LogIn', email.text.trim(), password.text.trim()),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Or continue with!',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  googleLogin(context),
                  faceBookLogin(),
                  //linkedInLogin()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
