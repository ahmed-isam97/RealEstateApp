import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/getX/controller/propertiesController.dart';
import 'package:sizer/sizer.dart';

import '../Constans/strings.dart';

class home_for_sale extends GetView<PropertiesController> {
  @override
  Widget build(BuildContext context) {
    print(controller.categoryForSale);
    Get.find<checkcontroller>();
    return Obx(() => controller.isLoaded.value
        ? ListView.builder(
            itemCount: controller.categoryForSale.length,
            itemBuilder: (context, int index) => Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Container(
                width: 50.w,
                height: 33.h,
                child: Card(
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(5.0),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Card(
                          child: Icon(
                            Icons.favorite,
                            color: Color(0xFF1F5753),
                          ),
                        ),
                      ),
                      width: 80.w,
                      height: 18.h,
                      margin: EdgeInsets.only(top: 5.0),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage("assets/home.jpg"),
                        fit: BoxFit.fill,
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.49), BlendMode.darken),
                      )),
                    ),
                    SizedBox(height: 1.0.h),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                          child:
                              Text("${controller.categoryForSale[index].location}"),
                        ),
                        Text("${controller.categoryForSale[index].category}",
                            style: TextStyle(
                                color: Color(0xFF1F5753),
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(height: 1.0.h),
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                          child: Text(
                            "${controller.categoryForSale[index].status}",
                            style: TextStyle(color: Colors.grey[500]),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.0.h),
                    Padding(
                      padding: const EdgeInsets.only(left: 200.0),
                      child: Text(
                        "\$" + "${controller.categoryForSale[index].price}" + "/m",
                        style: TextStyle(
                          color: Color(0xFF1F5753),
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          )
        : Center(
            child: CircularProgressIndicator(),
          ));
  }
}
