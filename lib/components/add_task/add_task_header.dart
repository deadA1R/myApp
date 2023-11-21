import 'package:flutter/material.dart';
import 'package:myapp/components/theme.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:intl/intl.dart';



class AddTaskBodyPage extends StatefulWidget {
  const AddTaskBodyPage({super.key});

  @override
  State<AddTaskBodyPage> createState() => _AddTaskBodyPageState();
}

class _AddTaskBodyPageState extends State<AddTaskBodyPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headerAddTask(),
          ],
        ),
      ),
    );
  }

  _headerAddTask(){
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [  
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(
                    "Add Task for your schedule",
                    style: subHeadingStyle, ),
                  ],
                ),
              ),    
            
            ],
          ),
          
        ],
      ),
    );
  }


}