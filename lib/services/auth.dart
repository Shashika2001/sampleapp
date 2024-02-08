import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import 'package:sampleapp/services/models/UserModel.dart';

class AuthServices{

//firebase instance

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
   UserCredential result= await _auth.signInAnonymously();
  User? user=result.user;
  return _userWithFirebaseUserUid(user);

 }catch(err){
  print(err.toString());
  return null;
 }
}

  //register using email & password
  Future registerWithEmailAndPassword(String email,String passwprd)async{
    try{
      UserCredential result= await _auth.createUserWithEmailAndPassword(email: email, password:passwprd);
      User? user=result.user;

    }catch(err){
      print(err.toString()
      );
      return null;
    }
  }
  //sign in using email & password
  //sign in using email
  //sign out
  Future signOut() async{
    try{
      return await  _auth.signOut();
    }catch (err){
      print(err.toString());
      return null;
    }
  }
}
