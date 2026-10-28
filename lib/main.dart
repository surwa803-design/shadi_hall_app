import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
final namecontroller  = TextEditingController();
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final showpasswordcontroller = TextEditingController();
  bool showpassword = true;
  bool finalpassword = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Color(0xFFD49A9A),Color(0xFFF2DACE)])
          ),
          padding: EdgeInsets.all(10),
          child: Column(
          
            children:[ Text("Create Account",
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Color(0XFF7C0E44),
            ),
           ),
           SizedBox(height: 20,),
           TextField(
            controller: namecontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "fullname",
              prefixIcon: Icon(Icons.person)
            ),
           ),
           SizedBox( height: 20,),
           TextField(
            controller: emailcontroller ,
             decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Email address",
              prefixIcon: Icon(Icons.email)
              )
           ),
           SizedBox( height: 20,),
           TextField(
            obscureText: showpassword,
             controller: passwordcontroller ,
             decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Password",
              prefixIcon: Icon(Icons.password),
              suffixIcon: IconButton(
              onPressed: (){
                print('hello');
                setState(() {
                  showpassword = !showpassword;
                });
              }, icon: Icon(Icons.remove_red_eye),)
              )
           ),
           SizedBox( height: 20,),
           TextField(
            controller: showpasswordcontroller,
            obscureText: finalpassword,
             decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "confirm password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  finalpassword = !finalpassword;
                });
              }, icon: Icon(Icons.remove_red_eye))
             )
           ),
            SizedBox( height: 20,),
           ElevatedButton(
            style:ElevatedButton.styleFrom(
                   backgroundColor: Color(0xFFAA5E7A),
                   foregroundColor: Color(0xFF7C0E44)),
            onPressed: (){
            setState(() {
              print("hello urwa");
              print(namecontroller.text);
              print(emailcontroller.text);
              print(passwordcontroller.text);
              print(showpasswordcontroller.text);
           });

           }, child: Text("Sign Up"),),
            SizedBox( height: 20,),
            Text("Already have an account?",
            style:TextStyle( color: Color(0xFF7C0E44)  ))
          
          ]),
        )
      
      ),
        );
      
    
  }
}