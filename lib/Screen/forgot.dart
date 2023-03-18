import 'package:flutter/material.dart';
import 'package:nascon/Screen/login.dart';
import 'package:nascon/widgets/loginButton.dart';
import 'package:nascon/widgets/textbutton.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 08),
                      child: Text(
                        "Forgot Your Password",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Text(
                    "Email",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Email',
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: LoginButton(
                    text: "Forgot Password",
                    route: ForgotPasswordScreen(),
                  )),
              SizedBox(
                height: 420,
              ),
              textBtn(route: LoginScreen(), text: "Go Back")
            ],
          ),
        ),
      ),
    );
  }
}
