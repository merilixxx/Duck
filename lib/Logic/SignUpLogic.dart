import 'package:flutter/material.dart';
import 'package:duck/Screens/SignUp.dart';

void SignUp(context){
  Navigator.of(context).push(
    MaterialPageRoute(
      builder: (context) => signUp(),
    ),
  );
}