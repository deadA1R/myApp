import 'package:flutter/material.dart';
import 'package:myapp/components/my_textfield.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(224, 224, 224, 1),
      body: SafeArea( 
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              const Icon(
                Icons.lock,
                size: 100,  
              ),
              const SizedBox(height: 50),
              const Text(
                'Welcome back you\'ve been missed!',
                style: TextStyle(
                  color: Color.fromRGBO(97, 97, 97, 1),
                  fontSize: 16
                ),
              ),
              const SizedBox(height: 50),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),
              const SizedBox(height: 15),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              )
              
            ],
          ),
        ),
      ),
    );
  }
}