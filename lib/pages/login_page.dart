import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/auth.dart';
import 'package:myapp/components/theme.dart';
import 'package:myapp/pages/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State <LoginPage> createState() =>  LoginPageState();
}

class LoginPageState extends State <LoginPage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
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
                width: w,
                height: h * 0.35,
                child: const Center(
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  <Widget>[
                        Image(
                          image: AssetImage('assets/image/logo.png'),
                          width: 250,
                          height: 250,
                          ),
                  ]
                  )
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
                      'Hello',
                      style: headingLoginPageStyle
                    ),
                    Text(
                      'Sign into your account',
                      style: subHeadingLoginPageStyle,
                    ),
                    const SizedBox(height: 50,),
                    Text(
                      "Enter your email address:",
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
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.6),
                          )
                        ]
                      ),
                      child: TextField(
                        controller: emailController,
                        decoration: const InputDecoration(
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
                    const SizedBox(height: 10),
                    Text(
                      "Enter your password:",
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
                        controller: passwordController,
                        obscureText: true,
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
                    const SizedBox(height:10),
                    Row(
                      children: [
                        Expanded(child: Container(),),
                        Text(
                          "Forgot your Password?",
                          style: titleTextFieldStyle,
                        ),
                      ]
                    ),
                    const SizedBox(height:20),
                    GestureDetector(
                      onTap: () {
                        AuthController.instance.login(emailController.text.trim(), passwordController.text.trim());
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
                    SizedBox(height: h*0.08,),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: "Don\'t have an account?",
                          style: subRegTextLoginStyle,
                          children: [
                            TextSpan(
                              text: " Create",
                              style: regTextLoginStyle,
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => RegisterPage()),
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
