import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/auth.dart';
import 'package:myapp/components/theme.dart';
import 'package:myapp/pages/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State <RegisterPage> createState() =>  RegisterPageState();
}

class  RegisterPageState extends State < RegisterPage> {
  
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var passwordConfirmController = TextEditingController();
    var usernameController = TextEditingController();
    var nameController = TextEditingController();
    var surnameController = TextEditingController();
    final _firestore = FirebaseFirestore.instance;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold( 
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(left: 5, right: 5, top: 15),
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
                padding: const EdgeInsets.symmetric(horizontal: 5),
                width: w,
                height: h * 0.15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Row( 
                      children: [
                        BackButton(
                          color: secondaryColor,
                          onPressed: (){
                            Navigator.pop(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPage())
                            );
                          },
                        ),                  
                        Container(
                          margin: const EdgeInsets.only(left: 100),
                          child: Text(
                              'Sign Up',
                              style: headingRegPageStyle,
                          ),
                        ),
                      ],
                    ),                      
                  ]
                )
              ),  
              Container(
                padding: const EdgeInsets.all(35),
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
                      'Welcome!',
                      style: headingLoginPageStyle
                    ),
                    Text(
                      'Create your account',
                      style: subHeadingLoginPageStyle,
                    ),
                    const SizedBox(height: 20,),
                    //first name
                    Text(
                      "First name:",
                      style: titleTextFieldStyle,
                    ),
                    const SizedBox(height:5),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15)
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: TextField(
                        controller: nameController,
                        decoration: const InputDecoration(
                          hintText: "your name",
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
                    const SizedBox(height: 10,),
                    //surname
                    Text(
                      "Last name:",
                      style: titleTextFieldStyle,
                    ),
                    const SizedBox(height:5),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: TextField(
                        controller: surnameController,
                        decoration: const InputDecoration(
                          hintText: "your surname",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                bottomLeft: Radius.circular(15),
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

                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height:10),
                    //username
                    Text(
                      "Username:",
                      style: titleTextFieldStyle,
                    ),
                    const SizedBox(height:5),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            const BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: TextField(
                        controller: usernameController,
                        decoration: const InputDecoration(
                          hintText: "your_username",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                topLeft: Radius.circular(15),
                                bottomRight: Radius.circular(15)
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
                                bottomRight: Radius.circular(15)
                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    //email
                    Text(
                      "Email:",
                      style: titleTextFieldStyle,
                    ),
                    const SizedBox(height:5),
                    Container(  
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            const BorderRadius.only(
                              bottomRight: Radius.circular(15),
                              topRight: Radius.circular(15)
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
                          hintText: "example@example.com",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                bottomRight: Radius.circular(15),
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
                                bottomRight: Radius.circular(15),
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
                    const SizedBox(height: 10,),
                    //password
                    Text(
                      "Password:",
                      style: titleTextFieldStyle,
                    ),
                    const SizedBox(height:5),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              topRight: Radius.circular(15)
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: const InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: 
                              BorderRadius.only(
                                bottomLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
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
                                topRight: Radius.circular(15),
                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    //confirm password
                    Text(
                      "Confirm password:",
                      style: titleTextFieldStyle,
                    ),
                    const SizedBox(height:5),
                    Container(
                      decoration: BoxDecoration(
                        color: secondaryColor,
                        borderRadius: 
                            const BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)
                              ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 15,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: TextField(
                        obscureText: true,
                        controller: passwordConfirmController,
                        decoration: const InputDecoration(
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
                    const SizedBox(height:20),
                    GestureDetector(
                      onTap: (){
                        if (passwordConfirmController.text == passwordController.text){
                          AuthController.instance.register(emailController.text.trim(), passwordController.text.trim());
                          _firestore.collection('users').add({
                            'email': emailController.text, 
                            'name': nameController.text,
                            'surname': surnameController.text,
                            'username': usernameController.text,
                            });
                        }
                        else{
                          Get.snackbar(
                            "About User", 
                            "User message", 
                            backgroundColor: primaryColor,
                            snackPosition: SnackPosition.BOTTOM,
                            titleText: const Text(
                              "Account creation failed",
                              style: TextStyle(
                                color: secondaryColor,
                              ),
                            ),
                            messageText: const Text(
                              "Passwords do not match each other, please try again",
                              style: TextStyle(
                                color: secondaryColor,
                              ),
                            ),
                          );
                        }
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
                              "Sign Up",
                              style: btnLoginStyle,
                              ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: h*0.05,),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Already have any account?",
                          style: subRegTextLoginStyle,
                          children: [
                            TextSpan(
                              text: " Sign In",
                              style: regTextLoginStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(builder: (context) => const LoginPage())
                                  );
                                },
                            ),
                          ]
                        ),
                        
                      ),
                    )
                  ]
                )
              ),
              
            ]
          ),
        ),
      ),
    );
  }
}
