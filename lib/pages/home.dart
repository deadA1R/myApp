import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xFFF9F9F9),
        elevation: 0, 
        leading: const Icon(Icons.menu, color: Colors.black87,),
        ),
      body: Center(
          child: Container(
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF9F9F9),
                Color(0xFFD0D0D0),
                ],
              )
            ),
              child: const Column(
                children: <Widget>[
                      SizedBox(height: 20),
                      BodyHomePage(),

                ]
              )
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
        child: const Text("Hello, buddy"),
      )
    );
  }
}
