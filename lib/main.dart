import 'package:flutter/material.dart';
import 'package:iproductive/constants.dart';
import 'package:iproductive/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
