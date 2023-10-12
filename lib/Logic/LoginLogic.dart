import 'package:duck/Screens/Login.dart';
import 'package:duck/Screens/MainScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void Login(BuildContext context, String Login, String Password) {
  if (Login == 'test' && Password == 'test') {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => mainScreen(),
      ),
    );
  } else {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => NotLogin(),
    );
  }
}
