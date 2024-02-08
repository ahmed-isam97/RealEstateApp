import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:sizer/sizer.dart';
import '../tools/Details.dart';
import '../tools/SideMenu.dart';
import 'For_rent_properties.dart';
import 'For_sale_properties.dart';
import 'add_new_property_1.dart';

class MY_Propraties extends GetView<checkcontroller> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideMenu(),
      ),
      appBar: AppBar(
        title: Text(
          "My Properties",
          style: TextStyle(
            color: Color(0xFF1F5753),
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF1F5753)),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0.0),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0,right: 50.0),
                  child: Text(
                    "For rent",
                    style: TextStyle(
                      color: Color(0xFF1F5753),
                      fontSize: 15.sp
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.0.h,),
            Container(
              width: 100.w,
              height: 33.h,
              child: For_rent_properties(),
            ),
            SizedBox(height: 2.0.h,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0,right: 50.0),
                  child: Text(
                    "For sale",
                    style: TextStyle(
                        color: Color(0xFF1F5753),
                        fontSize: 15.sp
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 1.0.h,),
            Container(
              width: 100.w,
              height: 33.h,
              child: For_rent_properties(),
            ),
            SizedBox(height: 2.0.h),
            MaterialButton(
              onPressed: () {
                Get.to(add_new_property_1());
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              color: Color(0xFF1F5753),
              child: SizedBox(
                width: 33.w,
                height: 5.h,
                child: Center(
                  child: Text(
                    "Add property",
                    style: TextStyle(color: Colors.white, fontSize: 15.0.sp),
                  ),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
