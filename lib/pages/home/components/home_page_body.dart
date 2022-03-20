import 'package:flutter/material.dart';
import 'package:iproductive/constants.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get total height and width of screen
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          height: size.height * .15,
          decoration: const BoxDecoration(
            color: whiteClr,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(33),
              bottomRight: Radius.circular(33),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Notes",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    color: greyClr,
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: Icon(
                    Icons.menu,
                    size: 40,
                    color: greyClr,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
