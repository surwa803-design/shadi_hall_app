import 'package:flutter/material.dart';

class Chat extends StatelessWidget {
   new({super.key, required  this.name});
  final String name;
  List<String> messages = ["msg1","msg2","msg3","msg4","msg5","msg6","msg7","msg8"];
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("$name"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Column(
        children: [
            Expanded(
              child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context,index){
                  bool isMe = index%2 !=0;
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: isMe? Alignment.centerLeft : Alignment.centerRight,
                        child: Container(
                          padding: EdgeInsets.all(8.0),
                          color: Colors.green.shade100,
                          child:  Text(messages[index]),
                          ),
                        ),
                      );
                  
                  
                  
                }
                
                ),
               ),
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                 ),
               )
              ]
        
             ),

          
        
      
      ),
    );
  }
}