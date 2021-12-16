import 'package:flutter/material.dart';

class CreateToDo extends StatelessWidget {
  const CreateToDo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        elevation: 0,
         backgroundColor: Colors.deepPurple,
        title: Text('Create To Do'),

      ),
      body:  Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Colors.pink.shade100, borderRadius: BorderRadius.only
        (bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20)),
        
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Title'),
            )
          ],
        ),
      )   
    );
  }
}