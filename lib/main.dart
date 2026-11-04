import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  RxInt number = 0.obs;
  final box = GetStorage();

 @override
  void initState() {
    super.initState();
    number.value = box.read("counter") ?? 0 ;
    Test();
  }
  void Test(){
    print("hello urwa");
  }
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("increment"),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
              ),
              body: Obx(
                () => Center(
                  child: Column(
                    children: [
                      Text("${number.value}"),
                      ElevatedButton(onPressed: (){
                        setState(() {
                          number.value--;
                          box.write("counter",number.value);
                        });
                      }, child: Icon(Icons.remove)),
                    ],
                  ),
                
                ),
              ),
          floatingActionButton: FloatingActionButton(
            onPressed: (){
              setState(() {
                box.write("counter", number);
                number.value++;
              });
            },child: Icon(Icons.add),
          ),
      ),
    );
  }
}