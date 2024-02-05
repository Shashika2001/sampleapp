import 'package:flutter/material.dart';
import 'package:sampleapp/services/auth.dart';

class Sign_In extends StatefulWidget {
  const Sign_In({super.key});

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {

  //ref for the authservices class
  final AuthServices _auth= AuthServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign in",
      style : const TextStyle(color: Colors.black),
      ),
      ),
      body: ElevatedButton(child: const Text("sign in Anonymously"),
       onPressed: ()async {
        dynamic result=await _auth.signInAnonymously();
        if (result==Null){
          print("error in sign in anonymously");
        }else{
          print("signed in anonymously");
          print(result.uid);
        }
       },
      ),
    );
  }
}