import 'package:get/get.dart';
import 'package:shadi_hall_app/home.dart';
import 'package:shadi_hall_app/login.dart';
import 'package:shadi_hall_app/dashboard.dart';

class AppRoutes {
  static const  home = '/';
  static const  login = '/login';
  static const dashboard = '/dashboard';


static final pages = [ 
  GetPage(
    name: home, 
    page: ()=> HomeScreen(),
    ),
  GetPage(
    name: login, 
    page: ()=>LoginScreen(),
    ),
    GetPage(
      name: dashboard, 
      page: ()=>DashboardScreen(),
      ),

];
}