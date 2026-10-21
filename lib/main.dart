import 'package:flutter/material.dart';
import 'theme.dart';

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
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
            width:200,
            child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(),
                    ),
                  ),
                  SizedBox(height: 10),
                 ElevatedButton(onPressed: (){}, child: Text("login"))
                 ],
                ) ,
          )
            ],
          )
          ],
            
          )
        ),
     );
   }
 }