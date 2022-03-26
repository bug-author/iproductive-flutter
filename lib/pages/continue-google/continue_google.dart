import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iproductive/constants.dart';

class ContinueWithGoogle extends StatefulWidget {
  const ContinueWithGoogle({Key? key}) : super(key: key);

  @override
  State<ContinueWithGoogle> createState() => _ContinueWithGoogleState();
}

class _ContinueWithGoogleState extends State<ContinueWithGoogle> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      width: size.width,
      height: size.height,
      color: darkGreyClr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "iProductive",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontFamily: "Avenir",
              fontSize: 68,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "maintain better workflows!",
            style: TextStyle(
              color: darkRedClr,
              fontFamily: "Avenir",
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "🚀 🎯 💪 ",
            style: TextStyle(
              color: darkRedClr,
              fontFamily: "Avenir",
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width - 60,
            height: 65,
            child: InkWell(
              onTap: () {
                debugPrint("Firebase integration");
              },
              child: Card(
                color: Colors.black45,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(19),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/google_icon.svg",
                      height: 35,
                      width: 35,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Continue with Google",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          // todo font families
                          fontFamily: '',
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
