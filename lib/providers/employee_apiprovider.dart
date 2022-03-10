
import 'package:dio/dio.dart';
import 'package:employee_flutter_app/Model/employee_model.dart';

import 'db_provider.dart';

class EmployeeApiProvider {
  Future<List<Null>> getAllEmployees() async {
    var url = "http://www.mocky.io/v2/5d565297300000680030a986";
    Response response = await Dio().get(url);

    return (response.data as List).map((employee) {
      print('Inserting $employee');
      DBProvider.db.createEmployee(EmployeeDetailsModel.fromJson(employee));
    }).toList();
  }
}
