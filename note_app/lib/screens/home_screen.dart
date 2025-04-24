import 'package:flutter/material.dart';
import 'package:note_app/models/note_models.dart' show Note;
import 'package:note_app/screens/create_notes.dart';

class HomeScreen extends StatefulWidget {
  const   HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {


  List<Note> notes = List<Note>.empty(growable: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Notes'),
        elevation: 13,
        backgroundColor: Colors.blue,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        

      ),

body: ListView.builder(
  itemCount: notes.length,
  itemBuilder: (context, index) {
    return InkWell(
      onTap: (){
        
      },
      child: Card(
        margin: const EdgeInsets.all(10),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                notes[index].title,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                notes[index].body,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
    },
  ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CreateNotes(onNewNoteCreated:onNewNoteCreated ,)),
            );
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.blue,
        ),
      );
    }

void onNewNoteCreated(Note note) {
  notes.add(note);  
  setState(() {
    
  });
}

void onNoteDeleted(int index) {
  notes.removeAt(index);
  setState(() {
    
  });
}
}