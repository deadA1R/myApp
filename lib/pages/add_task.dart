import 'package:flutter/material.dart';
import 'package:myapp/components/add_task/add_task_header.dart';
import 'package:myapp/components/theme.dart';
import 'package:myapp/components/my_textfield.dart';


class AddTaskPage extends StatefulWidget {
  const AddTaskPage({super.key});

  @override
  State<AddTaskPage> createState() => _AddTaskPageState();
}

class _AddTaskPageState extends State<AddTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                gradientFirstColor,
                gradientSecondColor,
                ],
              )
            ),
              child: Column(
                children: <Widget>[
                      AddTaskBodyPage(), 
                      
                ]
              )
        ),
    );
  }
  
}