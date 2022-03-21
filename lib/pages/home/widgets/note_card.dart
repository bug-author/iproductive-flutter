import 'package:flutter/material.dart';
import '../../../constants.dart';

class NoteCard extends StatelessWidget {
  final String note;
  const NoteCard({
    Key? key,
    required this.note,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15),
      padding: const EdgeInsets.all(16),
      width: size.width * .8,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        color: darkRedClr,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              debugPrint("pressed");
            },
            icon: const Icon(
              Icons.radio_button_checked_outlined,
              color: greyClr,
            ),
          ),
          Flexible(
            // love you hogaya ji
            // https://stackoverflow.com/questions/51930754/flutter-wrapping-text
            child: Text(
              note,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: greyClr,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
