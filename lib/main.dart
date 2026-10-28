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
  List<String> persons = ["urwa","laiba","shuamil","minahil","umer","usama","saima"];
  List<String> numbers = ["000000","8888888","999999","777777","474748","223333","898700"];
  List<String> times = ["10:00","12:00","8:00","9:00","8:00","5:00","9:00"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        
        appBar: AppBar(
          title: Text("Contacts"),
          backgroundColor: Colors.green,
        ),
        body: ListView.builder(
           itemCount: persons.length,
          itemBuilder: (context, index){
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(persons[index]),
                  subtitle: Text(numbers[index]),
                  trailing: Text(times[index]),
                ),
                Divider(
                  height: 1,
                  thickness: 0.5,
                  color:Colors.grey,
                )
              ],
            );
        }
        ),
        ),
      );
    
  }
}