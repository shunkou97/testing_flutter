import 'package:flutter/material.dart';

class AccountCreateTransition extends StatefulWidget {
  const AccountCreateTransition({Key? key}) : super(key: key);

  @override
  State<AccountCreateTransition> createState() =>
      _AccountCreateTransitionState();
}

class _AccountCreateTransitionState extends State<AccountCreateTransition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Transition Screen')),
      body: Container(
        child: Text("Succesfully create account."),
      ),
    );
  }
}
