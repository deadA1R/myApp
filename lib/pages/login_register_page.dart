import 'package:flutter/material.dart';
import 'package:myapp/components/theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State <LoginPage> createState() =>  LoginPageState();
}

class LoginPageState extends State <LoginPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold( 
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(5),
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
          child: Column(
            children: [
              Container(
                width: w,
                height: h * 0.25,
                child: const Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                        Image(
                          image: AssetImage('assets/image/logo.png'),
                          width: 175,
                          height: 175,
                          ),
                  ]
                  )
              )
              ),  
              Container(
                margin:const EdgeInsets.only(bottom: 25),
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: secondaryColor,
                  borderRadius: 
                    BorderRadius.only(topLeft: Radius.circular(50.0))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(
                      'Hello',
                      style: headingLoginPageStyle
                    ),
                    Text(
                      'Sign into your account',
                      style: subHeadingLoginPageStyle,
                    ),
                    SizedBox(height: 50,),
                    Text(
                      "Enter your email address:",
                      style: titleTextFieldStyle,
                    ),
                    SizedBox(height:5),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)
                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)
                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Enter your password:",
                      style: titleTextFieldStyle,
                    ),
                    SizedBox(height:5),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height:10),
                    Row(
                      children: [
                        Expanded(child: Container(),),
                        Text(
                          "Forgot your Password?",
                          style: titleTextFieldStyle,
                        ),
                      ]
                    ),
                    SizedBox(height:20),
                    
                  ]
                )
              ),
              Container(

              ),
            ]
          ),
        ),
      ),
    );
  }
}
