import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/getX/controller/propertiesController.dart';
import 'package:sizer/sizer.dart';

class SaleButton extends GetView<checkcontroller>{

  @override
  Widget build(BuildContext context) {
    Get.find<checkcontroller>();
    return Stack(
      children: [
       Padding(
              padding:  EdgeInsets.only(left: 50.0.w),
              child: MaterialButton(
                onPressed: () {
                  controller.isChecked.value = false;
                },
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0),topLeft: Radius.circular(50.0))),
                color:Colors.white,
                child: SizedBox(width: MediaQuery.of(context).size.width/2,
                  height: 7.7.h,
                  child: Center(
                    child: Text(
                      "RENT",
                      style: TextStyle(
                          color:Color(0xFF1F5753),
                          fontSize: 20.0

                      ),
                    ),
                  ),
                ),
              ),
            ),

        MaterialButton(
              onPressed: () {
                controller.isChecked.value = true;
              },
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(50.0),topRight: Radius.circular(50.0))),
              color: Color(0xFF1F5753),
              child: SizedBox(width: MediaQuery.of(context).size.width/2,
                height: 7.7.h,
                child: Center(
                  child: Text(
                    "SALE",
                    style: TextStyle(
                        color:Colors.white,
                        fontSize: 20.0

                    ),
                  ),
                ),
              ),
            )
      ],
    );
  }
}

