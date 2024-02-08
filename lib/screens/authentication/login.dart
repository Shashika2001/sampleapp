import 'package:flutter/material.dart';
import 'package:sampleapp/constants/colors.dart';
import 'package:sampleapp/constants/description.dart';
import 'package:sampleapp/constants/styles.dart';
import 'package:sampleapp/services/auth.dart';

class Sign_In extends StatefulWidget {
  //function
  final Function toggle;
  const Sign_In({Key? key, required this.toggle}):super(key: key);
  

  @override
  State<Sign_In> createState() => _Sign_InState();
}

class _Sign_InState extends State<Sign_In> {

  //ref for the authservices class
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
      appBar: AppBar(title: Text("Sign in"),
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
              height: 150,
              )
              ),
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
                            "Register",
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
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2,color: mainYellow)
                        
                          ),
                          child: Center(
                            child: Text("Log In",
                            style: TextStyle(color: Colors.white),
                            ),
                        )
                        ),
                      ),
                      
                      //anonymous
                      SizedBox( height: 10,),
                      GestureDetector(
                        onTap: () {
                          
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            
                            color: bgBlack,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 2,color: mainYellow)
                        
                          ),
                          child: Center(
                            child: Text("Log In as guest",
                            style: TextStyle(color: Colors.white),
                            ),
                        )
                        ),
                      ),
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

/*ElevatedButton(child: const Text("sign in Anonymously"),
       onPressed: ()async {
        dynamic result=await _auth.signInAnonymously();
        if (result==Null){
          print("error in sign in anonymously");
        }else{
          print("signed in anonymously");
          print(result.uid);
        }
       },
      ), */
