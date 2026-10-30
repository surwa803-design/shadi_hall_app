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
  List<String> students = ["Assignments due","New Messages","Class Reminder","Fee voucher","result declare","library","events","abc","cdf","ghi","fji",];
  List<String> messages = ["Submit before 5pm","sara sent a photo","flutter lecture at 11","last date is friday",
  "check your portal","Book return reminder","fee vouhcer","abc","cdf","ghi","fji",];
  List<String> time = ["9:00","8:45","9:45","5:50","3:00","4:00","8:00","abc","cdf","ghi","fji",];


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: Scaffold(
        appBar: AppBar(
          title: Text("Notifications"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body:Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder:(context, index) {
              return Column(
                children: [
                    ListTile(
                      leading: CircleAvatar(
                       child: Text(students[index].substring(0,1).toUpperCase()),
                      ),
                      title: Text(students[index]),
                      subtitle: Text(messages[index]),
                      trailing: Text(time[index]),
                     

                    ),
                  Divider(
                     height:1,
                     thickness:0.5,
                     color:Colors.grey,

                  )
                ],
                
              );
              
            
          
            }
            ),
           
        )

       ),
    );
  }
}