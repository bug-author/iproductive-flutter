import 'package:flutter/material.dart';
import 'package:iproductive/pages/home/new_note/utils/new_note_dialog.dart';
import '../../../constants.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      clipBehavior: Clip.none,
      children: <Widget>[
        Container(
          height: size.height * .15,
          decoration: const BoxDecoration(
            color: whiteClr,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
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
                    fontSize: 50,
                    color: greyClr,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    debugPrint("HELLO");
                  },
                  icon: const Icon(
                    Icons.menu,
                    size: 45,
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
            onPressed: () async {
              newNoteDialog(context);
            },
            backgroundColor: darkRedClr,
            elevation: 20,
            child: const Icon(
              Icons.add,
              size: 55,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
