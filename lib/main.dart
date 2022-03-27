import 'package:flutter/material.dart';
import 'package:iproductive/constants.dart';
import 'package:iproductive/pages/continue-google/continue_google.dart';
import 'package:iproductive/pages/home/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:iproductive/services/auth_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget currentPage = const ContinueWithGoogle();
  AuthClass authClass = AuthClass();

  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  void checkLogin() async {
    String? token = await authClass.getToken();
    if (token != null) {
      setState(() {
        currentPage = const HomePage();
      });
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
      home: currentPage,
    );
  }
}
