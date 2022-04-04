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
  TextEditingController _nameController = TextEditingController();
  var _nameError;
  TextEditingController _passwordController = TextEditingController();
  var _passwordError;

  var _formKey = GlobalKey<FormState>();

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
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'User Name',
                hintText: "Enter your User Name",
                errorText: _nameError,
                border: OutlineInputBorder(),
              ),
              maxLength: 30,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'Enter your Password',
                  errorText: _passwordError,
                  border: OutlineInputBorder(),
                  suffixIcon: GestureDetector(
                    onTap: _toggle,
                    child: Icon(
                        _obscureText ? Icons.visibility : Icons.visibility_off),
                  )),
              maxLength: 30,
            ),
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
                  if (_nameController.text.length < 5)
                    _nameError = "Please enter more than 5 characters";
                  else if (_passwordController.text.length < 5)
                    _passwordError = "Please enter more than 5 characters";
                  else
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                },
              )
            ],
          ),
        ],
      )),
    );
  }
}
