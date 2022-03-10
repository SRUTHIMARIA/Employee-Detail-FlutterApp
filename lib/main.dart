import 'package:employee_flutter_app/Home/demo.dart';
import 'package:employee_flutter_app/route.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute: '/data',
        getPages: Routes.routes
    );
  }
}