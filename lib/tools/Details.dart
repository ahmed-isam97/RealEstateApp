import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/tools/specification.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'SideMenu.dart';
import 'description.dart';
import 'horizental_home.dart';
class Details extends GetView<checkcontroller> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: SideMenu(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF1F5753)),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 100.w,
                height: 21.h,
                child: horizental_home()
              ),
              Container(
                padding: EdgeInsets.only(right: 10.0),
                width: 100.w,
                height: 62.h,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Text("                                                        Available",
                          style: TextStyle(
                            fontSize: 13.sp,
                            color: Color(0xFF1F5753)
                          ),
                        ),
                        SizedBox(height:1.0.h),
                        Text("Brief description , Brief description , Brief description, Brief description"),
                        SizedBox(height:5.0.h),
                        Divider(
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        SizedBox(height: 1.0.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Obx(
                                  () =>GestureDetector(
                                    onTap: () {
                                      controller.check();
                                    },
                                    child: new Text("description",
                                                    style: TextStyle(
                                                    fontSize: 13.sp,
                                                     color: !controller.isChecked.value ? Color(0xFF1F5753):Colors.black,
                              ),
                            ),
                            ),
                            ),
                            Text("|",
                            ),
                            Obx(
                              () => GestureDetector(
                                onTap: () {
                                  controller.check();
                                },
                                child: new Text("Specification",
                              style: TextStyle(
                                  fontSize: 13.sp,
                                  color: controller.isChecked.value ? Color(0xFF1F5753):Colors.black,
                              ),
                            ),
                            ),
                            ),
                          ],
                        ),
                        SizedBox(height: 1.0.h,),
                        Divider(
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        SizedBox(height: 1.0.h,),
                        Obx(
                                () => controller.isChecked.value ? specification() : description()
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Price",
                              style: TextStyle(
                                fontSize: 15.sp
                              ),
                            ),
                            Text("350/m",
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: Color(0xFF1F5753)
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Color(0xFF1F5753),
                    ),
                    width: 15.0.w,
                    height: 5.0.h,
                    child: IconButton(
                      icon: const Icon(FontAwesome.whatsapp, size: 20 ,color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Color(0xFF1F5753),
                    ),
                    width: 15.0.w,
                    height: 5.0.h,
                    child: IconButton(
                      icon: const Icon(Icons.phone, size: 20 ,color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      color: Color(0xFF1F5753),
                    ),
                    width: 15.0.w,
                    height: 5.0.h,
                    child: IconButton(
                      icon: const Icon(Icons.mail_outline, size: 20 ,color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

      ),
    );
  }
}
