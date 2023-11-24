import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/components/theme.dart';
import 'package:myapp/pages/home.dart';
import 'package:myapp/pages/login_page.dart';

class AuthController extends GetxController{
  // AuthController.intsance...
  static AuthController instance = Get.find();
  late Rx<User?> _user;
  FirebaseAuth auth = FirebaseAuth.instance;


  @override
  void onReady(){
    super.onReady();
    _user = Rx<User?>(auth.currentUser);
    _user.bindStream(auth.userChanges());
    ever(_user, _initialScreen);
  } 

  _initialScreen(User? user){
    if(user == null){
      print("Login page ");
      Get.offAll(()=>LoginPage());
    }
    else{
      Get.offAll(()=> Home());
    }
  }

  register(String email, password)async{
    try{
      await auth.createUserWithEmailAndPassword(email: email, password: password);
    }catch(e){
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
        messageText: Text(
          e.toString(),
          style: const TextStyle(
            color: secondaryColor,
          ),
        ),
      );
    }
  }

  void login(String email, password)async{
    try{
      await auth.signInWithEmailAndPassword(email: email, password: password);
    }catch(e){
      Get.snackbar(
        "About Login", 
        "Login message", 
        backgroundColor: primaryColor,
        snackPosition: SnackPosition.BOTTOM,
        titleText: const Text(
          "Login failed",
          style: TextStyle(
            color: secondaryColor,
          ),
        ),
        messageText: Text(
          e.toString(),
          style: const TextStyle(
            color: secondaryColor,
          ),
        ),
      );
    }
  }

  void logOut()async{
    await auth.signOut();
  }

  void resetPassword(String email)async{
    try{
      await auth.sendPasswordResetEmail(email: email);
      Get.snackbar(
      "About User", 
      "User message", 
      backgroundColor: primaryColor,
      snackPosition: SnackPosition.BOTTOM,
      titleText: const Text(
        "Password reset email has been sent.",
        style: TextStyle(
          color: secondaryColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      messageText: const Text(
        "If you have not received the email, check whether the data is correct",
        style: TextStyle(
          color: secondaryColor,
        ),
      ),
    );
    }catch(e){
    Get.snackbar(
      "About User", 
      "User message", 
      backgroundColor: primaryColor,
      snackPosition: SnackPosition.BOTTOM,
      titleText: const Text(
        "Reset password failed",
        style: TextStyle(
          color: secondaryColor,
        ),
      ),
      messageText: Text(
        e.toString(),
        style: const TextStyle(
          color: secondaryColor,
        ),
      ),
    );
    }
  }
}