import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:myapp/components/theme.dart';
import 'package:myapp/pages/home.dart';



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
        builder: (_) => const Home()));
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
                gradientFirstColor,
                gradientSecondColor,
                ],
              )
            ),
              child: const Center(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  <Widget>[
                      Image(
                        image: AssetImage('assets/image/logo.png'),
                        ),
                        SizedBox(height: 16.0),
                      Text(
                      'by dddeeddd',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFFB1B1B1)
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