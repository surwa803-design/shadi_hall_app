import 'package:flutter/material.dart';

// ignore: camel_case_types
class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("login page"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: Container(
          color: Colors.deepPurple.shade100,
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "email",
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              TextField(
                  decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "email",
                  fillColor: Colors.white,
                  filled: true,
                  ),
              ),
              ElevatedButton(onPressed: (){}, child: Text("login")),
            ],
          ),
        ),
      ),
    );
  }
}