import 'package:employee_flutter_app/Model/employee_model.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  // final String response;
    final EmployeeDetailsModel? employeeDetail;

     DetailScreen({required this.employeeDetail});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (BuildContext context, int index) {
        return Text(employeeDetail!.username);
      }),
    );
  }
}
