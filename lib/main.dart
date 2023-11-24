import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/auth.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/splash_screen.dart';
import 'package:myapp/pages/login_page.dart';
import 'package:myapp/pages/add_task.dart';
import 'package:firebase_core/firebase_core.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((value) => Get.put(AuthController()));
  runApp(MyApp());
} 

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myApp',
      home: const LoginPage(),
    );
  }
}
