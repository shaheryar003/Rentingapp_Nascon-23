import 'package:flutter/material.dart';
import 'package:nascon/Screen/Signup.dart';
import 'package:nascon/Screen/forgot.dart';
import 'package:nascon/Screen/phonelogin.dart';
import 'package:nascon/Screen/profile.dart';
import 'package:nascon/widgets/loginButton.dart';
import 'package:nascon/widgets/textbutton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Text(
                  "RENTING APP",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0, bottom: 08),
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
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
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                  child: Text(
                    "Enter Password",
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Password',
                ),
              ),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ForgotPasswordScreen()),
                    );
                  },
                  child: Text('Forgot your password?'),
                ),
              ),
              LoginButton(
                text: "Login",
                route: profileScreen(),
              ),
              SizedBox(
                height: 10,
              ),
              LoginButton(
                text: 'Login/Signup With Phone',
                route: SignupScreen(),
              ),
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: textBtn(
                  route: SignupScreen(),
                  text: "Sign up",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
