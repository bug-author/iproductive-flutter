import 'package:flutter/material.dart';
import 'package:iproductive/constants.dart';

import 'components/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const HomePageBody(),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: whiteClr,
      elevation: 0,
    );
  }
}
