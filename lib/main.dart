import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/splash_screen.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/pages/add_task.dart';




void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: const Color.fromARGB(255, 15, 23, 105),

    ),
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/main': (context) => const Home(),
      '/add_task': (context) => const AddTaskPage(),
      '/login_page': (context) => LoginPage(),
    }
));

