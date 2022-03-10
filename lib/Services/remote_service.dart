import 'package:employee_flutter_app/Model/employee_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Provider extends GetConnect{

  Future<List<dynamic>> getUser() async{
    final response = await get('http://www.mocky.io/v2/5d565297300000680030a986');
    if(response.status.hasError){
      return Future.error(response.statusText!);
    } else {
      print(response.body);
      return response.body;
    }
  }

}

Future<List<EmployeeDetailsModel>> _getUsers() async {

  final  response = await http.get(Uri.parse("http://www.mocky.io/v2/5d565297300000680030a986"));

if(response.statusCode==200){
  var jsonString=response.body;
  print(response.body);
  return employeeDetailsModelFromJson(jsonString);

}else{
  throw Exception("Error");
}

  // List<EmployeeDetailsModel> users = [];



}

