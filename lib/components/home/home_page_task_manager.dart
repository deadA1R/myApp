import 'package:flutter/material.dart';
import 'package:myapp/auth.dart';
import 'package:myapp/components/theme.dart';

class TaskManagerInHomePage extends StatefulWidget {
  const TaskManagerInHomePage({super.key});

  @override
  State<TaskManagerInHomePage> createState() => _TaskManagerInHomePageState();
}

class _TaskManagerInHomePageState extends State<TaskManagerInHomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) { 
        return Container(
          width: double.infinity,
          height: 150,
          decoration: const BoxDecoration(
            color: secondaryColor,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0)

            )
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 20,),
                GestureDetector(
                      onTap: () {
                        AuthController.instance.logOut();
                      },
                      child: Center(
                        child: Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                                  color: primaryColor,
                                  borderRadius: 
                                      BorderRadius.only(
                                        bottomLeft: Radius.circular(15),
                                        bottomRight: Radius.circular(15),
                                        topLeft: Radius.circular(15)
                                        ),
                                ),
                          child: Center(
                            child: Text(
                              "Sign In",
                              style: btnLoginStyle,
                              ),
                          ),
                        ),
                      ),
                    ),
              ],
            ),
          ),
        );
      },
    );
  }
}