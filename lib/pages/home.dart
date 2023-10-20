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
        title: const Text('Home', style: TextStyle(color: Colors.black87),),
        leading: const Icon(Icons.menu, color: Colors.black87,),
        actions: const <Widget> [
          Padding(
              padding: EdgeInsets.all(10.0),
              child: Icon(Icons.login, color: Colors.black87,),
              )
            ],
          ),
      body: Center(
          child: Container(
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF9F9F9),
                Color(0xFFFBFBFB),
                ],
              )
            ),
              child: const Column(
                children: <Widget>[
                      SizedBox(height: 20),
                      ModernAppBar(),
                ]
              )
          )
      ),
    );
  }
}

class ModernAppBar extends StatefulWidget {
  const ModernAppBar({super.key});

  @override
  State<ModernAppBar> createState() => _ModernAppBarState();
}

class _ModernAppBarState extends State<ModernAppBar> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(),
        ); 
  }
}
