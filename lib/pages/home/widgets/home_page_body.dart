import 'package:flutter/material.dart';
import 'package:iproductive/pages/home/widgets/note_card.dart';
import 'package:iproductive/pages/home/widgets/top_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<NoteCard> notes = [
      NoteCard(note: "🚀🚀🚀"),
      NoteCard(note: "What percent of devs actually read docs? 🤔🤔🤔"),
      NoteCard(note: "Exercise"),
      NoteCard(note: "Podcasts"),
      NoteCard(note: "AHHHHHHH"),
      NoteCard(note: "Code"),
      NoteCard(
          note:
              "some large ass text some large ass text some large ass text some large ass text abcd asd askd sandsd sdsa"),
      NoteCard(note: "Code"),
    ];
    // get total height and width of screen
    Size size = MediaQuery.of(context).size;

    return Column(mainAxisSize: MainAxisSize.max, children: [
      // todo try preffered size widget for top bar implementation instead of separate code for app bar and top bar
      const TopBar(),
      SizedBox(
        height: size.height * 0.05,
      ),
      Flexible(
          child: Container(
        constraints: BoxConstraints(
          maxWidth: size.width * 0.8,
        ),
        child: ListView.builder(
          itemBuilder: (ctx, idx) {
            return notes[idx];
          },
          itemCount: notes.length,
        ),
      ))
    ]);
  }
}
