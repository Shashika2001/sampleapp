import 'package:flutter/material.dart';
import 'package:sampleapp/screens/authentication/login.dart';
import 'package:sampleapp/screens/authentication/register.dart';
import 'package:sampleapp/screens/home/home.dart';

class Authenticate extends StatefulWidget {
  const Authenticate({super.key});

  @override
  State<Authenticate> createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Sign_In(),
    );
  }
}