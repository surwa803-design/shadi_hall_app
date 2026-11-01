import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shadi_hall_app/chat.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  const new({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> persons = ["ali","ahmed","noor","waheed","shumail","urwa","laiba","minahil"];
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("whatsapp") ,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                  ),
                  hintText: "search",
                  prefixIcon: Icon(Icons.search)
                )
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: persons.length,
                  itemBuilder: (context, index){
                    
                    return Column(
                      children: [
                        ListTile(
                          onTap: (){
                            Get.to(Chat(
                              name : persons[index]
                            ));
                          },
                          leading: CircleAvatar(
                            child: Icon(Icons.person),
                          ),
                          title: Text(persons[index]),
                          subtitle: Text("how are you "),
                          trailing: Column(
                            children: [
                              Text("10:00m"),
                              CircleAvatar(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                radius: 10,
                                child: Text("1"),
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
                  }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}