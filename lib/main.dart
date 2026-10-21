import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home:Scaffold(
        appBar: AppBar(
           backgroundColor: Colors.red,
           title: Text("My App"),
          ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          Container(
      
            color:Colors.blue,
            height:200,
            width:200,
          ),Container(
            color:Colors.purple,
            height:200,
            width:200,
          ),Container(
            color:Colors.brown,
            height:200,
            width:200,
          ),Container(
            color:Colors.yellow,
            height:200,
            width:200,
          ),
           Container(
            color:Colors.black,
            height:200,
            width:200,
            ),
         ]  
        ),Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
          Container(
      
            color:Colors.blue,
            height:200,
            width:200,
          ),Container(
            color:Colors.purple,
            height:200,
            width:200,
          ),Container(
            color:Colors.brown,
            height:200,
            width:200,
          ),Container(
            color:Colors.yellow,
            height:200,
            width:200,
          ),
           Container(
            color:Colors.black,
            height:200,
            width:200,
            ),
         ]  
        ),
        ],
        )
       )
    );
   }

 
  }