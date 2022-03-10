import 'package:employee_flutter_app/Services/remote_service.dart';
import 'package:get/state_manager.dart';

import 'package:get/get.dart';

class DataController extends GetxController with StateMixin<List<dynamic>>{

  @override
  void onInit() {
    super.onInit();
    Provider().getUser().then((value) {
      change(value, status: RxStatus.success());
    },onError: (error){
      change(null,status: RxStatus.error(error.toString()));
    });
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}

// class EmployeeController extends GetxController {
//   var employeeList = <EmployeeDetailsModel>[].obs;
//
//   @override
//   void onInit() {
//     // TODO: implement onInit
//     fetchEmployeeDetails();
//     super.onInit();
//   }
//
//   void fetchEmployeeDetails() async {
//     var employee = await RemoteService.fetchEmployeeDetails();
//     if (employee != null) {
//       employeeList.value = employee;
//     }
//   }
// }
