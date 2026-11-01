import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shadi_hall_app/registration.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final name = TextEditingController();
   final email = TextEditingController();
    final password = TextEditingController();
     final confirmpassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.green,
        ),
         body: ShowScreen(name: name, email: email, password: password, confirmpassword: confirmpassword),
      ),
    );
  }
}

