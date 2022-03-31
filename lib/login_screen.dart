import 'package:flutter_application_3/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'main_menu.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Container(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
                decoration: InputDecoration(
              labelText: 'User Name',
              hintText: "Enter your User Name",
            )),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Enter your Password',
                    suffixIcon: GestureDetector(
                      onTap: _toggle,
                      child: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ))),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
                child: Text('Log In'),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Main_Menu()));
                }),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'No account? ',
              ),
              GestureDetector(
                child: Text(
                  "Sign Up",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      color: Color.fromARGB(244, 27, 30, 209)),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                },
              )
            ],
          ),
        ],
      )),
    );
  }
}
