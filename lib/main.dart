import 'package:flutter/material.dart';
import 'package:shadi_hall_app/chat.dart';
import 'package:get/get.dart';

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
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Whatsapp"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
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
            
          
           SizedBox(height: 12),    
        
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (context, index){
                 return Column(
                   children: [
                     ListTile(
                      onTap: (){
                        print(index);
                      
                      //Navigator.push(context, 
                      //  MaterialPageRoute(builder: (context,) => ChatHistory(
                      //   name : students[index],
                     //    n: index,
                     //   )),
                    //    );
                    Get.to(ChatHistory(name: students[index], n: index));
                      },
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
           
      
          ),
    );
    
  }
}