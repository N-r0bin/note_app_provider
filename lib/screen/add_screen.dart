import 'package:flutter/material.dart';
import 'package:lab6provider/providers/notes_operation.dart';
import 'package:provider/provider.dart';

class AddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String titleText = 'title';
    String descriptionText = 'description';

    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      appBar: AppBar(
        title: Text('Write Youre Notes'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 15,
          left: 15,
          right: 15,
          bottom: 80,
        ),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Title',
                hintStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              onChanged: (value) {
                titleText = value;
              },
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Enter Description',
                  hintStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
                onChanged: (value) {
                  descriptionText = value;
                },
              ),
            ),
            TextButton(
              onPressed: () {
                Provider.of<NotesOperation>(context, listen: false)
                    .addNewNote(titleText, descriptionText);
                Navigator.pop(context);
              },
              style: TextButton.styleFrom(
                padding:
                EdgeInsets.only(left: 120, right: 120, top: 10, bottom: 10),
                backgroundColor: Colors.white,
              ),
              child: Text('Add Note',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.orangeAccent,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
}