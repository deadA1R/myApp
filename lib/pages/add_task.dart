import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/theme.dart';


class AddTaskPage extends StatelessWidget {
  const AddTaskPage({super.key});

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
        ),
    );
  }
}