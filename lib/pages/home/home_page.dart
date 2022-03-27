import 'package:flutter/material.dart';
import 'package:iproductive/constants.dart';
import 'package:iproductive/pages/continue-google/continue_google.dart';
import 'package:iproductive/services/auth_service.dart';

import 'widgets/home_page_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AuthClass authClass = AuthClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ***************
      appBar: myAppBar(),
      body: const HomePageBody(),
    );
  }

  AppBar myAppBar() {
    // todo combined logic for tabbed + curved bottom + stacked button
    return AppBar(
      backgroundColor: whiteClr,
      actions: [
        InkWell(
          child: const Icon(
            Icons.logout_sharp,
            color: darkGreyClr,
            size: 32,
          ),
          onTap: () async {
            await authClass.logOutAndRemoveToken();
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                    builder: (builder) => const ContinueWithGoogle()),
                (route) => false);
          },
        ),
        const SizedBox(
          width: 10,
        ),
      ],
      elevation: 0,
    );
  }
}
