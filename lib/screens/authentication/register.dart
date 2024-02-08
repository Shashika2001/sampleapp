import 'package:flutter/material.dart';
import 'package:sampleapp/constants/colors.dart';
import 'package:sampleapp/constants/description.dart';
import 'package:sampleapp/constants/styles.dart';
import 'package:sampleapp/screens/authentication/login.dart';
import 'package:sampleapp/services/auth.dart';

class Register extends StatefulWidget {

  final Future<dynamic> toggle;
  const Register({Key? key, required this.toggle}):super(key: key);
  

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final AuthServices _auth= AuthServices();

  //form key
  final _formKey =GlobalKey<FormState>();

  //email password states
  String email ="";
  String password="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(title: Text("Register"),
      elevation: 0,
      backgroundColor: Colors.blue,
      ),
      body:
      SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.only(left:15,right: 15),
          child: Column(
            children: [
              //description
              Text(description, style: descriptionStyle,
              ),
              Center(child: Image.asset('assets/boy24.jpg',
              height: 200,
              )
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      //email
                      TextFormField(
                        decoration: textTnputDecoration,
                        validator: (val)=>
                        val?.isEmpty== true ? "Enter a valid email" : null,
                        onChanged: (val){
                          setState(() {
                            email=val;
                          }
                          );
                        },
                      ),
                
                      SizedBox(height: 10,),
                        
                      //password
                       TextFormField(
                        decoration: textTnputDecoration.copyWith(hintText: "Password"),
                        validator: (val)=>
                        val!.length<6 ? "Enter a valid password" : null,
                        onChanged: (val){
                          setState(() {
                            email=val;
                          }
                          );
                        },
                      ),
                        
                      //google
                      const SizedBox(
                        height: 20,
                      ),
                     const Text("Login with social accounts",
                     style: descriptionStyle,
                     ),
                     SizedBox(height: 10,),
                      GestureDetector(
                        //sign in with google
                        onTap: (){},
                        child: Center(child: Image.asset('assets/google.png',
                                      height: 100,
                                      )
                                      ),
                      ),
                SizedBox(height: 10,),
                
                        
                        
                        
                      //register
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Text("Do you have an account?",
                        style: descriptionStyle,
                        
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          //go to the register page
                          onTap: () {
                            
                          },
                          child: Text(
                            "Log In",
                            style: TextStyle(color: mainBlue,
                            fontWeight: FontWeight.w600),
                          ),
                        ),
                      ]
                      ),
                      //button
                      SizedBox(height: 20,),
                      GestureDetector(
                        onTap: () {
                          widget.toggle;
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2,color: mainYellow)
                        
                          ),
                          child: Center(
                            child: Text("Register",
                            style: TextStyle(color: Colors.white),
                            ),
                        )
                        ),
                      ),
                      
                      //anonymous
                      SizedBox( height: 10,),
                     
                    ],
                    )
                  ),
              )
            ],
          ),
        ),
      )
    );
  }
}
