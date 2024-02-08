import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleapp/screens/authentication/authenticate.dart';
import 'package:sampleapp/screens/home/home.dart';
import 'package:sampleapp/services/models/UserModel.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({super.key});

  @override
  Widget build(BuildContext context) {
//the user data that the provider provides this can be a user data or can be null
final user = Provider.of<UserModel?>(context);

if(user==null){
  return Authenticate();
}else{
  return Home();
}

  }
}
