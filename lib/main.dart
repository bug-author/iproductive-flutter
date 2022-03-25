import 'package:flutter/material.dart';
import 'package:iproductive/constants.dart';
import 'package:iproductive/pages/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  firebase_auth.FirebaseAuth firebaseAuth = firebase_auth.FirebaseAuth.instance;

  void signUp() async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: 'abdi@gmail.com', password: '123445');
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iProductive',
      theme: ThemeData(
        primaryColor: whiteClr,
        scaffoldBackgroundColor: greyClr,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: darkGreyClr,
        ),
      ),
      home: const HomePage(),
    );
  }
}
