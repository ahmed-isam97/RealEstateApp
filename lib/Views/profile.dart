import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/getX/controller/userController.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../tools/SideMenu.dart';
import 'EditProfile.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class Profile extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() => controller.isLoaded.value
        ? Scaffold(
      drawer: Drawer(
        child: SideMenu(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF1F5753)),

      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 00.0),
          child: Center(
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(99)),
                  child: Container(
                    //color : Colors.grey[400],
                    width : 10.h,
                    height: 10.h,
                    child: Image.network(controller.users[0].image!,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                          child: Text(
                            "Full name",
                            style : TextStyle(

                            )
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 8.0.h,
                      child: TextField(
                        readOnly: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: '${controller.users[0].fullName}',
                            contentPadding: EdgeInsets.only(left: 50.0),
                            fillColor: Colors.white70,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Phone number",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: '${controller.users[0].phoneNumber}',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Email address",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: '${controller.users[0].email}',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Gender",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: '${controller.users[0].gender}',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Birthdate",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: '${controller.users[0].brithDate}',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 1.0.h),
                MaterialButton(
                  onPressed: () {
                    Get.to(EditProfile());
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  color: Color(0xFF1F5753),
                  child: SizedBox(
                    width: 33.w,
                    height: 5.h,
                    child: Center(
                      child: Text(
                        "Edit profile",
                        style: TextStyle(color: Colors.white, fontSize: 15.0.sp),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    )
        : Center(
    child: CircularProgressIndicator(),
    )
    );
  }
}
