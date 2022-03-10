import 'package:employee_flutter_app/Controller/employeeController.dart';
import 'package:employee_flutter_app/Home/detailpage.dart';
import 'package:employee_flutter_app/Model/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:get/get.dart';


class HomePage extends GetView<DataController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80.0,
        backgroundColor: Colors.indigo,
        centerTitle: true,
        title: Text(
          'Employee Profile Details',
          style: TextStyle(fontFamily: 'Segoebold'),
        ),
      ),
      body: controller.obx((data) => Center(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: data?.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetailScreen(employeeDetail: data![index],),
                        ),
                      );
                     // Get.to(DetailScreen(employeeDetail: data![index]['id']));
                    },
                    child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [


                            data![index]['profile_image'] != null
                                ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CircleAvatar(
                                    radius: 50,
                                      backgroundImage: NetworkImage(
                                          data[index]['profile_image']),

                                    ),
                                )
                                : Container(
                                    width: 100,
                                    child: CircleAvatar(
                                      radius: 50,
                                      backgroundImage: NetworkImage(
                                          "https://randomuser.me/api/portraits/men/1.jpg"),

                                    )

                                  ),
                            //      Padding(
                            //        padding: const EdgeInsets.all(8.0),
                            //        child: CircleAvatar(
                            //          radius: 40,
                            //          backgroundImage:
                            //              NetworkImage(data![index]['profile_image']),
                            //        ),
                            //      ),
                            Text(
                              data[index]['name'],
                              style: TextStyle(fontFamily: 'Segoebold',fontSize: 16.0),
                            ),
                            data[index]['company']!= null
                                ? Text(
                                    data[index]['company']['name'])
                                : const Text(
                                      "No Company Name"),


                            Text(
                              data[index]['email'],
                              style: TextStyle(fontFamily: 'SegoeRegular',fontWeight: FontWeight.bold,fontSize: 14),
                            ),

                          ],
                        )),
                  ),
                );
              },
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            ),
            // child: GridView.builder(
            //     itemCount: data?.length,
            //     shrinkWrap: true,
            //     itemBuilder: (BuildContext context, int index){
            //       return Card(
            //         elevation: 0.0,
            //         child: Column(
            //           children: [
            //             ListTile(
            //               title: Text(data![index]['name'],style: TextStyle(fontFamily: 'Segoebold'),),
            //               subtitle: Text(data[index]['username'],style: TextStyle(fontFamily: 'SegoeRegular'),),
            //               leading: CircleAvatar(
            //                 radius: 40,
            //                 backgroundImage: NetworkImage(
            //
            //                     data[index]['profile_image']
            //                 ),
            //               ),
            //
            //             )
            //           ],
            //         ),
            //       );
            //     },  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 5,
            //   crossAxisSpacing: 5.0,
            //   mainAxisSpacing: 5.0,
            // ),)
          )),
    );
  }
}
