import 'package:flutter/material.dart';
import 'package:iproductive/constants.dart';

void newNoteDialog(BuildContext context) async {
  await showDialog(
    context: context,
    builder: (_) => const AlertDialog(
      backgroundColor: darkRedClr,
      title: Center(
        heightFactor: 2,
        child: Text(
          "Add a note!",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: darkGreyClr,
          ),
        ),
      ),
      content: TextField(
        onChanged: null,
        controller: null,
        decoration: InputDecoration(
          hintText: "New note...",
          icon: Icon(Icons.note_add),
          iconColor: darkGreyClr,
        ),
        autofocus: true,
      ),
    ),
  );
}
