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
  List<String> students = [
    "urwa" , "shumail" ,"minahil" ,"umer", "laiba" ,"shehzadi", "usama", "eman" , "kainat","suneha", "laiba"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("WHATSAPP"),
          backgroundColor: Colors.green,
          

        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
              
                 decoration: InputDecoration(
                  hintText: "Search here",
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0)
                    
                    
                  )
                 ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index){
                 return Column(
                   children: [
                     ListTile(
                      leading: CircleAvatar(
                        child: Icon(Icons.person),
                      ),
                      title: Text(students[index]),
                      subtitle: Text("How are you?"),
                      trailing: Column(
                        children: [
                          
                     
                          Text("10:00 am"),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 12,
                          )
                          
                        ],
                      ),
                     ),
                     Divider(
                      height: 1,
                      thickness: 0.5,
                      color: Colors.grey,
                     )
                   ],
                 );
                }
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.message),),
      ),
    );
  }
}