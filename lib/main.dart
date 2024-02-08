import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sampleapp/firebase_options.dart';
import 'package:sampleapp/screens/wrapper.dart';
import 'package:sampleapp/services/auth.dart';
import 'package:sampleapp/services/models/UserModel.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: 
    DefaultFirebaseOptions.currentPlatform,
  );
  
  
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserModel?>.value(initialData: UserModel(uid: ""),
    value:AuthServices().user,
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    ),
    
    );
  }
}
