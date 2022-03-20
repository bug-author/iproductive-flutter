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
        Stack(
          clipBehavior: Clip.none,
          children: <Widget>[
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
                  children: [
                    const Text(
                      "Notes",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: greyClr,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        debugPrint("HELLO");
                      },
                      icon: const Icon(
                        Icons.menu,
                        size: 40,
                        color: greyClr,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              // 30 is somehow a magical number here that makes the button
              // align right were i want
              // todo test on other phone sizes
              // ? works on a smaller phone, not sure if itll work on even smaller ones
              top: (size.height * 0.15) - 30,
              left: ((size.width) / 2) - 30,
              child: FloatingActionButton(
                onPressed: () {
                  debugPrint("Pressed");
                },
                backgroundColor: darkRedClr,
                elevation: 20,
                child: const Icon(
                  Icons.add,
                  size: 30,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
