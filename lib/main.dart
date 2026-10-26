import 'package:flutter/material.dart';


void main (){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
 
}

class _MyAppState extends State<MyApp> {
 final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(),
       body: Container(
             height: double.infinity,
             width: double.infinity,
             decoration: BoxDecoration(
             gradient: LinearGradient(colors: [Colors.purple,Colors.white]),
            ),
        child: Column(
            children: [
              Text("Welcome back",
               style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
                ),),
                SizedBox(
                  height:40,
                ),
              TextField(
                controller: emailcontroller,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: "enter you email",
                  prefixIcon: Icon(Icons.email),
                  filled: true,
                  fillColor: Colors.white,
                  ),
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                controller: passwordcontroller,
               obscureText: showPassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "enter you password",
                  prefixIcon:  Icon(Icons.password),
                  suffixIcon: IconButton(onPressed: (){
                     setState(() {
                       showPassword = !showPassword;
                     });
                  }, icon: Icon(Icons.remove_red_eye)),
                  ),
                ),
              
              SizedBox(
                height:40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                     height:50,
                      width:400,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors:[Colors.white,Colors .red]),
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                      ),
                       onPressed: (){
                        setState(() {
                          print(emailcontroller.text);
                          print(passwordcontroller.text);
                        });
                        
                       }, child : Text("login") )),
                ],
              )
            ],
          ),
        ),
       )
      );
  }
}