import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthMiddleware extends GetMiddleware{
@override
RouteSettings? redirect(String? route){
  bool islogin = false;

  if(!islogin){
    return const RouteSettings(name: '/login');
  }
}
}
