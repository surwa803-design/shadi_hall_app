import 'package:flutter/material.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required  this.name, required this.email});
  final String name;
  final String email;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
         appBar: AppBar(
          title: Text("next page"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
         ),
         body: Container(
          child: Column(
            children: [
             
              Text("email : $email"),
               Text("name:$name"),
                Text(""),
                 Text(""),
            ],
          ),
         ),
      ),
    );
  }
}