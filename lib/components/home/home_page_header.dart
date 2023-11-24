import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/components/button_add.dart';
import 'package:myapp/components/theme.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/pages/add_task.dart';



class BodyHomePage extends StatefulWidget {
  const BodyHomePage({super.key});

  @override
  State<BodyHomePage> createState() => _BodyHomePageState();
}

class _BodyHomePageState extends State<BodyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: secondaryColor,
          borderRadius: BorderRadius.all(Radius.circular(30.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _headerDate(),
            _callendar(),
          ],
        )
      )
    );
  }

  _headerDate(){
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
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
                    DateFormat.yMMMMd().format(DateTime.now()),
                    style: subHeadingStyle,),
                  Text(
                    "Today",
                    style: headingStyle, ),
                  ],
                ),
              ),    
              ButtonAdd(label: "+ add task", onTap: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(builder: (context) => AddTaskPage()),
                );
              }),
            
            ],
          ),
          
        ],
      ),
    );
  }

  _callendar(){
    return Container(
      margin: const EdgeInsets.all(20),
      child: DatePicker(
        DateTime.now(),
        height: 80,
        width: 50,
        initialSelectedDate: DateTime.now(),
        selectionColor: therdlyColor,
        selectedTextColor: secondaryColor,
        dateTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,

          )
        ),
        dayTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 12,
          )
        ),
        monthTextStyle: GoogleFonts.lato(
          textStyle: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,

          )
        ),
      )
    );
  }
}