import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:sampleapp/services/models/UserModel.dart';

class AuthServices{

//forebase instance

final FirebaseAuth _auth=FirebaseAuth.instance;

//create a user fom firebase user  with uid

UserModel? _userWithFirebaseUserUid( User? user){
  return user !=null ? UserModel(uid: user.uid) : null;
}
Stream<UserModel?> get user {
  return _auth.authStateChanges().map(_userWithFirebaseUserUid);
}

  //sign in anonymous
Future signInAnonymously() async{
 try{
   UserCredential result= await signInAnonymously();
  User? user=result.user;
  return _userWithFirebaseUserUid(user);

 }catch(err){
  print(err.toString());
  return null;
 }
}

  //register using email & password
  //sign in using email & password
  //sign in using email
  //sign out
}