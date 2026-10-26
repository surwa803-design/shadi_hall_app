import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dashboard"),
          backgroundColor: Colors.green,
        ),
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Expanded(flex:2,
                  child:Stack(
                    children:[
                      Container(color: Colors.red,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.people,
                              color: Colors.white,
                              size: 60),
                             SizedBox(height: 20,),

                             Text("Users",
                              style:TextStyle(
                                color:Colors.white,
                                fontWeight: FontWeight.bold,
                              )),
                            ],
                          ),
                        ],
                      )
                    ]),
                   ),
                  Expanded(flex:2,
                  child:Stack(
                    children:[Container(color:Colors.lightGreenAccent),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                             Icon(Icons.bar_chart,
                            color: Colors.white,
                              size: 60 ),
                               SizedBox(height: 20,),
                             Text("Reports",
                             style:TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                             )),
                          ],
                        ),
                      ],
                    )
                    ])
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                 children: [
                  Expanded(flex:2,
                  child:Stack(
                  children: [Container(color: Colors.blue,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_cart,
                          color: Colors.white,
                              size: 60),
                            SizedBox(height: 20,),
                          Text("Orders",
                          style:TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          )),
                        ],
                      ),
                    ],
                  ),
                  ]),
                  ),
                  Expanded(flex:2,child: 
                  Stack(
                    children:[Container(color:Colors.amber),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.settings,
                            color: Colors.white,
                              size: 60),
                            SizedBox(height: 20,),
                            Text("Settings",
                            style:TextStyle(color:Colors.white,
                            fontWeight: FontWeight.bold,

                            ),),
                           
                          ],
                        ),
                      ],
                    )
                    ]),
                    )
                 ],
              ),
            )
          ],
        )
      ),
    );
  }
}