import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("login screen"),
         backgroundColor: Colors.black,
         foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text("login here"),
          ElevatedButton(onPressed: (){
          Get.offNamed(AppRoutes.dashboard);
          }, child:  Text("dashbord page")),
        ],
      ),
    );
  }
}