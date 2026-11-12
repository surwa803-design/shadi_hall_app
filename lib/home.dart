import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Home Screen"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
       ),
       body:
         Center(
           child: Column(
             children: [
               Text("Home Screen",
               style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
               ),),
               ElevatedButton(onPressed: (){
                  Get.toNamed(AppRoutes.login);
               }, child: Text("login page"))
             ],
           ),
         ),
         
        
      
    );
  }
}