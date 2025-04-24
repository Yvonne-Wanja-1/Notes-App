import 'package:flutter/material.dart';
import 'package:note_app/models/note_models.dart' show Note;

class CreateNotes extends StatefulWidget {
  const CreateNotes({super.key,required this.onNewNoteCreated});

  final Function(Note) onNewNoteCreated;

  @override
  State<CreateNotes> createState() => _CreateNotesState();
}

class _CreateNotesState extends State<CreateNotes> {


  final titleController = TextEditingController();
  final bodyController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Note'),
        elevation: 13,
        backgroundColor: Colors.blue,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
      ),

body: Padding(
  padding: const EdgeInsets.all(10),
  child: Column(
    children: [
      TextFormField(
        controller: titleController,
        decoration: const InputDecoration(
          hintText: 'Title',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20),
          
        ),
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
  
  SizedBox(height: 20),
      TextFormField(
        controller: bodyController,
        decoration: const InputDecoration(
          hintText: 'Your Story',
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(20),
          
        ),
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      )
    ],
  ),
),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if (titleController.text.isNotEmpty && bodyController.text.isNotEmpty){
            final note = Note(
              title: titleController.text,
              body: bodyController.text,
            );
            widget.onNewNoteCreated(note);
            Navigator.pop(context);
          }
        },
        child: const Icon(Icons.save),
        backgroundColor: Colors.blue,
      ),
    );
  }
}