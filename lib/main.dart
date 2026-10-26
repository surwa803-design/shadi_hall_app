import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Counter"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you have pressed the botton"),
            SizedBox(height: 100 ,),
            Text("$number",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 50,
              color: Colors.blue,
            )),
            SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  setState(() {
                    number--;
                  });
                },
                style:ElevatedButton.styleFrom(backgroundColor: Colors.red,foregroundColor: Colors.white), 
                child:Text("-")),
                SizedBox(width: 50,),
                ElevatedButton(onPressed: (){
                  setState(() {
                   number=0;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white , foregroundColor: Colors.blue),
                 child: Text("Reset")),
                  SizedBox(width: 50,),
                ElevatedButton(onPressed: (){
                  setState(() {
                    number++;
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green , foregroundColor: Colors.white),
                 child: Text("+")),
              ],
            )
          ],
        )
      )
    );
  }
}