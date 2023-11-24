import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/auth.dart';
import 'package:myapp/components/theme.dart';
import 'package:myapp/pages/login_page.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State <ResetPasswordPage> createState() =>  ResetPasswordPageState();
}

class  ResetPasswordPageState extends State <ResetPasswordPage> {
  
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold( 
      body: SingleChildScrollView(
        child: Container(
          height: h,
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
                padding: const EdgeInsets.only(left: 5, right: 5, top: 30),
                width: w,
                height: h * 0.25,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Row( 
                      children: [
                        BackButton(
                          color: secondaryColor,
                          onPressed: (){
                            Navigator.pop(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage())
                            );
                          },
                        ),                  
                        Container(
                          margin: const EdgeInsets.only(left: 40),
                          child: Text(
                              'Reset Password',
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
                    BorderRadius.only(topLeft: Radius.circular(50.0,), bottomLeft: Radius.circular(50))
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Text(
                      'Don\'t worry!',
                      style: headingResetPageStyle,
                    ),
                    Text(
                      'Recieve an email to reset your password.',
                      style: subHeadingResetPageStyle,
                    ),
                    const SizedBox(height: 35,),
                    
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
                              bottomLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                              topLeft: Radius.circular(15)
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
                                bottomLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                                topLeft: Radius.circular(15)
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
                                topLeft: Radius.circular(15)
                              ),
                            borderSide: BorderSide(
                              color: secondaryColor,
                              width: 1.0,
                            ),   
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20,),
                    
                    GestureDetector(
                      onTap: (){
                        AuthController.instance.resetPassword(emailController.text.trim());
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
                              "Reset password",
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
                                    MaterialPageRoute(builder: (context) => LoginPage())
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
