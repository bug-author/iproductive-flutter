import 'package:flutter/material.dart';
import 'package:iproductive/pages/home/widgets/note_card.dart';
import 'package:iproductive/pages/home/widgets/top_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // get total height and width of screen
    Size size = MediaQuery.of(context).size;

    return Column(
      children: [
        const TopBar(),
        SizedBox(
          height: size.height * 0.05,
        ),
        const NoteCard(note: "🚀🚀🚀"),
        const NoteCard(note: "Code"),
        const NoteCard(
            note:
                "some large ass text some large ass text some large ass text some large ass text abcd asd askd sandsd sdsa"),
      ],
    );
  }
}
