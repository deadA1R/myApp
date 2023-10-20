import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/login_page.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{
  
  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => LoginPage()));
    });
  
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, 
    overlays: SystemUiOverlay.values);
    super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
        Center(
          child: Container(
            decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Color.fromARGB(255, 68, 68, 68),
                Color.fromARGB(255, 37, 37, 37),
                ],
              )
            ),
              child: const Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                      Image(
                        image: AssetImage('assets/image/my_tasks.png'),
                        ),
                        SizedBox(height: 16.0),
                      Text(
                      'by dddeeddd',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 177, 177, 177)
                        ),
                      ),
                ]
                )
              )
          )
      ),
    );
  }

}