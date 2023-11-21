import 'package:flutter/material.dart';
import 'package:myapp/components/theme.dart';

class TaskManagerInHomePage extends StatefulWidget {
  const TaskManagerInHomePage({super.key});

  @override
  State<TaskManagerInHomePage> createState() => _TaskManagerInHomePageState();
}

class _TaskManagerInHomePageState extends State<TaskManagerInHomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) { 
        return Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)

            )
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,)
              ],
            ),
          ),
        );
      },
    );
  }
}