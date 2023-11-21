import 'package:flutter/material.dart';
import 'package:myapp/components/home/home_page_header.dart';
import 'package:myapp/components/home/home_page_task_manager.dart';
import 'package:myapp/components/theme.dart';


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
