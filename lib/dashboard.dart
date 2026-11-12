import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app_routes.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DashboardScreen"),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Text("Wlocom to the Dashboard"),
        ],
      ),
    );
  }
}