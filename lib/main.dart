import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main(){
    runApp(MyApp());
}

class MyApp extends StatefulWidget {
 MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 int num = 0;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text("Shoe store"),
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
            ),
            body:
             Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                      
                          
                          
                          child: Image.asset("assets/images/image1.png",
                          height: 500,
                          width: 500,
                          fit: BoxFit.contain,
                          ),
                      ),
                  ListTile(
                    title: Text("Show Store",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                    ),),
                    subtitle: Text("Premium quality shoes",
                     style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    )
                  ),
                  ListTile(
                    title: Text("Rs.2500",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.green,
                    ),),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Select Show Type",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),),
                      SizedBox(
                            width: 10,
                          ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text("Sports")),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(onPressed: (){}, child: Text("Casual")),
                          SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(onPressed: (){}, child: Text("Running")),
                        ],
                      ),
                      SizedBox(
                            height: 10,
                          ),
                      Text("Select Color",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black,
                          ),
                           SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.red,
                          ),
                           SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                          ),
                           SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.green,
                          ),
                        ],
                      ),
                      Text("Select Size",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text("39"),
                          style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                          ),),
                           SizedBox(
                                width: 10,
                              ),
                           ElevatedButton(onPressed: (){}, child: Text("40"),
                          style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                          ),),
                           SizedBox(
                                width: 10,
                              ),
                           ElevatedButton(onPressed: (){}, child: Text("41"),
                          style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                          ),),
                           SizedBox(
                                width: 10,
                              ),
                           ElevatedButton(onPressed: (){}, child: Text("42"),
                          style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          )
                          ),),
                        ],
                      ),
                      Text("Quantity",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            child: IconButton(onPressed: (){
                                setState(() {
                                  num++;
                                });
                            },
                             icon: Icon(Icons.add)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text("$num"),
                           SizedBox(
                            width: 10,
                          ),
                          CircleAvatar(
                            child: IconButton(onPressed: (){
                                setState(() {
                                 num--;
                                });
                            },
                            icon: Icon(Icons.remove)),
                          ),
                        ],

                      ),
                      Text("Total: Rs.2500",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),),
                      ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(5000, 50),
                        backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                      ),
                       child: Text("Add to Cart")),
                    ],
                  )
                  ]
             
                ),
                         
             ),
        ),
    );

  }
}