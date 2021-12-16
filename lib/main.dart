import 'package:flutter/material.dart';

import 'Views/HomeView.dart';

void main() {
  runApp(ToDoApp());

}

class ToDoApp extends StatelessWidget {
  const ToDoApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:'ToDoApp',
      home: MyHomeView(),
      
    );
  }
}


