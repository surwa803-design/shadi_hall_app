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
  final namecontroller = TextEditingController();
   final emailcontroller = TextEditingController();
    final phonecontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home:Scaffold(
        appBar: AppBar(
           title: Text("Sign up",
           style: TextStyle(
             color: Colors.white,
           ),),
           backgroundColor: Colors.green,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: namecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:"Name",
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:"Email",
                    prefixIcon: Icon(Icons.email),
                    )
                ),
                 SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: phonecontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText:"Phone",
                    prefixIcon: Icon(Icons.phone),
                    )
                ),
                 SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width:250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.green,
                    border: BoxBorder.all(
                      color: Colors.white,
                      width: 0.5,
                    
                    )
                  ),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                    ),
                    onPressed: (){
                    print(namecontroller.text);
                    print(emailcontroller.text);
                    print(phonecontroller.text);
                  }, child: Text("Register",
                  style: TextStyle(
                    color: Colors.white,
                  ),)),
                ),
                 SizedBox(
                  height: 20,
                ),
               Stack(
                children:[ Container(
                  height: 150,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.zero,
                  ),
                
                  
               
                ),Column(
                  children:[
                Text("UrwaSajjad"),
                Text("urwagmial.com"),
                Text("000099999"),]),
                ],),
                SizedBox(
                  height: 20,
                ),
                Text("All fields are required",
                style: TextStyle(
                  color: Colors.red,
                ),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}