import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
 class MyApp extends StatefulWidget{
 const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 final emailController = TextEditingController();
 final passwordController = TextEditingController();
  bool showPassword = true;
  int number = 0;

 @override
    Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("my appp",),
        ),
        body: Column(
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                hintText: "enter you email",
                prefixIcon: Icon(Icons.email),

              ),
            ),
            SizedBox(height: 40,),
            TextField(
              controller: passwordController,
              obscureText: showPassword,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.password),
                hintText: "enter you password",
                suffixIcon: IconButton(
                  onPressed: ()
                  {
                    setState(() {
                       showPassword = !showPassword;
                    });
                 
                  },
                 icon: Icon(Icons.remove_red_eye))
              ),
            ),
            SizedBox(
              height: 40,
            ),
            
            ElevatedButton(onPressed: (){
              print(emailController.text);
               print(passwordController.text);
            }, child: Text("test")),
            Text("$number"),
            ElevatedButton(onPressed: (){
                setState(() {
                  number++;
                });
            }, child: Text("incement"))
          ],
        ),
      ),
    );
   }
}