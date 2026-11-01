import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadi_hall_app/login.dart';

import 'dashboard.dart';


class ShowScreen extends StatelessWidget {
  const new({
    super.key,
    required this.name,
    required this.email,
    required this.password,
    required this.confirmpassword,
  });

  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController password;
  final TextEditingController confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       gradient: LinearGradient(colors: [Colors.green, Colors.white]),
      ),
     child: Center(
       child: Padding(
         padding: const EdgeInsets.all(20.0),
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
               controller: name,
             decoration: InputDecoration(
               border:OutlineInputBorder(),
               hintText: "name",
               filled: true,
               fillColor: Colors.white,
               prefixIcon: Icon(Icons.person),
             ),
            ),
            SizedBox(height: 20,),
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
            SizedBox(height: 20,),
             TextField(
               controller: confirmpassword,
               decoration: InputDecoration(
               border:OutlineInputBorder(),
                hintText: "confirm-password",
               filled: true,
               fillColor: Colors.white,
               prefixIcon: Icon(Icons.password),
             ),
             ),
               SizedBox(height: 20,),
             Container(
                height: 50,
                width:500,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(100),
                 color: Colors.amber,
                ),
    
               child: ElevatedButton(
               
                 
                 onPressed: (){
                   Get.to(Dashboard(
                     name:name.text,
                     email:email.text,
                   ));
                   
                 }, 
                 child: Text("Register"),
                 style: ElevatedButton.styleFrom(
                 backgroundColor: Colors.transparent,
                  ), 
                  ),
             ),
             GestureDetector(
              onTap:() {
                Get.to(Login());
              } ,
               child: Text("Already have an account",
               style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
               )),
             )
           ],
         ),
       ),
     ),
    );
  }
}