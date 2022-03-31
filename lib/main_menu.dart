import 'package:flutter/material.dart';

class Main_Menu extends StatefulWidget {
  const Main_Menu({Key? key}) : super(key: key);

  @override
  State<Main_Menu> createState() => _Main_MenuState();
}

class _Main_MenuState extends State<Main_Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
    );
  }
}
