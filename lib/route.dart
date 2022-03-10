import 'package:employee_flutter_app/Controller/data_binding.dart';
import 'package:employee_flutter_app/Home/homepage.dart';
import 'package:get/get.dart';

class Routes{

  static final routes = [

    GetPage(
      name: '/data',
      page: () => HomePage(),
      binding: DataBinding(),
    ),


  ];
}