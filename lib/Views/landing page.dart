import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/Views/login%20page.dart';
import 'package:sizer/sizer.dart';

import '../Constans/strings.dart';
import '../getX/controller/propertiesController.dart';
import '../tools/errorMessage.dart';
import '../tools/home_for_rent.dart';
import '../tools/home_for_sale.dart';
import '../tools/popups.dart';
import 'MY_Propraties.dart';
import 'add_new_property_1.dart';
import 'homeScreen.dart';

class LandingPage extends GetView<PropertiesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          width: 100.w,
          height: 100.h,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/background.jpg"),
                fit: BoxFit.fill,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.49), BlendMode.darken),
              )
          ),

          child: Padding(
            padding: EdgeInsets.fromLTRB(30.0, 100.0, 30.0, 0.0),
            child: Center(
              child: Column(
                children: [
                  Image.asset("assets/logo.png",
                    width: 50.0.w,
                    height: 30.0.h,
                  ),
                  Obx(
                        () => Visibility(
                        visible: controller.isEnter.value,
                        child: CircularProgressIndicator()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0,top: 50.0),
                    child: MaterialButton(
                      onPressed: () async {
                          controller.isEnter.value = true;
                          if (await controller.fetchData() ==
                              true) {
                            controller.categoryForSale.value = controller.properties.where((property) => property.category == 'For sale').toList();
                            controller.categoryForRent.value = controller.properties.where((property) => property.category == 'For rent').toList();
                            if(controller.categoryForSale.isNotEmpty){
                              controller.isEnter.value = false;
                              Get.to(homeScreen());
                            }
                          }
                          else {
                            controller.isEnter.value = false;
                            statusCode = 0;
                            message(statusCode);
                            errorPopup(errorMessage);
                          }
                      },

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(99.0))),
                      color: Colors.white,
                      child: SizedBox(width: 60.w,height: 10.h,
                        child: Center(
                          child: Text(
                            "Looking for a property",
                            style: TextStyle(
                                color: Color(0xFF1F5753),
                                fontSize: 17.0

                            ),
                          ),
                        ),


                      ),
                    ),
                  ),

                  MaterialButton(
                    onPressed: () {
                      Get.to(MY_Propraties());

                  },
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(99.0))),
                    color: Color(0xFF1F5753),
                    child: SizedBox(width: 60.w,height: 10.h,
                      child: Center(
                        child: Text(
                          "Offering a property",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 17.0

                          ),
                        ),
                      ),


                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}