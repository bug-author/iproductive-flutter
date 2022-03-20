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
          overflow: Overflow.visible,
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
            Positioned(
              // 35 is somehow a magical number here that makes the button
              // align right were i want
              // todo test on other phone sizes
              top: (size.height * 0.15) - 35,
              left: ((size.width) / 2) - 35,
              child: const FloatingActionButton(
                onPressed: null,
                backgroundColor: darkRedClr,
                child: Icon(
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
