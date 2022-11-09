//part of '../../view.dart';

import 'package:flutter/material.dart';

import '../../../consts/r.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backgroundColor,
      body: Center(
        child: Text(
          'Chat Screen'
        ),
      ),
    );
  }
}
