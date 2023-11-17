import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:myapp/components/theme.dart';
import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/components/weather.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 29, 29, 29),
                Color.fromARGB(255, 43, 43, 43),
                ],
              )
            ),
              child: const Column(
                children: <Widget>[
                      BodyHomePage(),
                      SizedBox(height: 10),
                      TaskManagerInHomePage(),    
                ]
              )
        ),
    );
  }
}

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
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [      
            Text(
              DateFormat.yMMMMd().format(DateTime.now()),
              style: subHeadingStyle,),
            Text(
              "Today",
              style: HeadingStyle, ),
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
        selectionColor: Colors.black,
        selectedTextColor: Colors.white,
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
            color: Colors.white,
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