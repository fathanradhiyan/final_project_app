//part of '../../view.dart';

import 'package:flutter/material.dart';

import '../../../consts/r.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: R.colors.backgroundColor,
      body: Center(
        child: Text(
            'Profile Screen'
        ),
      ),
    );
  }
}
