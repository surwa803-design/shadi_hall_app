import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

@override
Widget build(BuildContext context){
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("My App")
        ),
      body: Container(
        height:double.infinity,
        width:double.infinity,
        decoration:BoxDecoration(
          gradient: LinearGradient(colors:
             [const Color.fromARGB(255, 109, 92, 92), const Color.fromARGB(255, 96, 61, 61)]
              )    
         ),
         child:Padding(
         padding: const EdgeInsets.all(24.0),
           child: Column(
              children: [
           Text("Welcome home",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize:40,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
                filled: true,
                fillColor:Colors.white,
                hintText: "enter you email"
              ),
            ),
             SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password),
                filled: true,
                fillColor:Colors.white,
                hintText: "enter you password"
              ),
            ),
             SizedBox(
              height: 20,
            ),
           Container(
             height: 50,
             width: 400,

             decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              gradient: LinearGradient(colors:[const Color.fromARGB(255, 115, 32, 26),const Color.fromARGB(255, 10, 39, 63)])
             ),
             
             child: ElevatedButton(
                style:ElevatedButton.styleFrom(
                   backgroundColor: Colors.transparent,
                 ),
              onPressed: (){}, child: Text("login")
             ),
           ),
           ],
         
         ),
     ),
        )
      ),
    );
   
  }
}

