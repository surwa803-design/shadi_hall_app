

import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'package:get/get.dart';



class Login extends StatelessWidget {

  final email =TextEditingController();
  final password = TextEditingController();

  String correctemail = "urwasajjad@gmail.com";
  String correctpassword = "12345678";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("LOGIN PAGE"),
        ),

        body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white,Colors.blue])
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Create Account",
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 20,
                   ),),
                   TextField(
                    controller: email,
                   decoration: InputDecoration(
                     border:OutlineInputBorder(),
                     hintText: "email",
                     filled: true,
                     fillColor: Colors.white,
                     prefixIcon: Icon(Icons.email),
                   ),
                  ),
                  SizedBox(height: 20,),
                   TextField(
                    controller: password,
                   decoration: InputDecoration(
                     border:OutlineInputBorder(),
                     hintText: "password",
                     filled: true,
                     fillColor: Colors.white,
                     prefixIcon: Icon(Icons.password),
                   ),
                  ),
                  ElevatedButton(
               
                 
                 onPressed: (){
                  if(email.text==correctemail && password.text ==correctpassword){
                    Get.to(Dashboard(name: "urwasajjad", email: email.text));
                  }else{
                    Get.snackbar("login failed", "wrong details");
                  }
                  
                   
                 }, 
                 child: Text("Register"),
                 style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.transparent,
                  ), 
                  ),
              ],
            ),
          ),
        ),
      ),
      ),
    );
  }
}