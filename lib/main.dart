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
  List<String> peoples = ["urwa","shumail","minahil","umer","suneha","laiba","saima"];
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark() ,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("profile",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),
        body:Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            child: Column(
              children: [
                Container(
                  child: CircleAvatar(
                    radius: 60,
                    child: Icon(Icons.person),
                  ),
                ),
               ListTile(
                title: Text("Urwa Sajjad",
                textAlign: TextAlign.center,
              ),
                subtitle: Text("IT student. leading flutter",
                 textAlign: TextAlign.center,
                ),
               ),
               Divider(
                thickness: 1,
                color: Colors.grey,
               ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Expanded(
                    child: ListTile(title: Text("24", textAlign: TextAlign.center,),subtitle: Text("posts",  textAlign: TextAlign.center,),),),
                   Expanded(
                      child: ListTile( title: Text("310", textAlign: TextAlign.center,), subtitle: Text("followers", textAlign: TextAlign.center,),)
                    ),
                   Expanded(
                      child: ListTile( title: Text("180", textAlign: TextAlign.center,), subtitle: Text("folloeing", textAlign: TextAlign.center,),)
                    ),
                  
                ]
               ),
                Divider(
                thickness: 1,
                color: Colors.grey,
               ),
               TextField(
                decoration: InputDecoration(
                  hintText: "Edit Profile",
                   prefixIcon: Icon(Icons.person)
                ),
               ),
               SizedBox(
                height: 20,
               ),
                TextField(
                   decoration: InputDecoration(
                  hintText: "Settings",
                  prefixIcon: Icon(Icons.settings)
                ),
                ),
                 SizedBox(
                height: 20,
               ),
                 TextField(
                   decoration: InputDecoration(
                  hintText: "logout",
                  prefixIcon: Icon(Icons.logout)
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