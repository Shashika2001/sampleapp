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

  bool signInPage =true;

  //toogle pages
   void switchPages()async{
    setState(() {
      signInPage!=signInPage;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(signInPage==true){
      return Sign_In(toggle: switchPages);
    }else{
      return  Register(toggle: switchPages);
    }
  }
}
