import 'package:flutter/material.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/splash_screen.dart';
import 'package:myapp/pages/login_register_page.dart';
import 'package:myapp/pages/add_task.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashScreen(),
      '/main': (context) => const Home(),
      '/add_task': (context) => const AddTaskPage(),
      '/login_page': (context) => const LoginPage(),
    }
));
} 

