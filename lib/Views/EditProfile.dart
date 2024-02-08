import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/Views/homeScreen.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/getX/controller/userController.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';

import '../tools/SideMenu.dart';
import '../tools/popups.dart';

class EditProfile extends GetView<UserController> {
  final TextEditingController fullname = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController birthdate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List<String> days = List.generate(31, (index) => (index + 1).toString());
    List<String> month = List.generate(12, (index) => (index + 1).toString());
    List<String> years =
        List.generate(45, (index) => (index + 1980).toString());
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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
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
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Full name",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    controller: fullname,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Users full name',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Email address",
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 8.0.h,
                  child: TextField(
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'username@mail.com',
                        contentPadding: EdgeInsets.only(left: 50.0),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Gender",
                      ),
                    ),
                  ],
                ),
                DropdownButtonFormField<String>(
                  hint: Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: const Text('Gender'),
                  ),

                  decoration:  InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          borderSide: BorderSide(color: Color(0xff444444))),
                      fillColor: Colors.white70,
                      filled: true),

                  items: <String>['Male', 'Female'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      onTap: () {
                        gender.text = value;
                      },
                      child: Text(value),
                    );
                  }).toList(),

                  // value:,

                  onChanged: (_) {},
                ),
                SizedBox(height: 2.0.h),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                      child: Text(
                        "Birthdate",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 25.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('  Day'),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 12),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                    BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true),

                        items: days.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {
                              if (int.parse(value) < 10) {
                                birthdate.text += "0";
                                birthdate.text += value;
                              } else {
                                birthdate.text += value;
                              }
                              birthdate.text += "-";
                            },
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),
                    SizedBox(width: 0.5.h),
                    Container(
                      width: 36.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   Month'),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 12),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                    BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true),

                        items: month.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {
                              if (int.parse(value) < 10) {
                                birthdate.text += "0";
                                birthdate.text += value;
                              } else {
                                birthdate.text += value;
                              }
                              birthdate.text += "-";
                            },
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),
                    SizedBox(width: 1.0.w),
                    Container(
                      width: 25.w,
                      child: DropdownButtonFormField<String>(
                        hint: const Text('   Years'),
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.only(left: 12),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                borderSide:
                                    BorderSide(color: Color(0xff444444))),
                            fillColor: Colors.white70,
                            filled: true),

                        items: years.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            onTap: () {
                              birthdate.text += value;
                            },
                            child: Text(value),
                          );
                        }).toList(),

                        // value:,

                        onChanged: (_) {},
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.0.h),
                Obx(
                  () => Visibility(
                      visible: controller.isEnter.value,
                      child: CircularProgressIndicator()),
                ),
                SizedBox(height: 5.0.h),
                MaterialButton(
                  onPressed: () async {
                    controller.isEnter.value = true;
                    if (await controller.updateUser(fullname.text,
                            birthdate.text, gender.text, email.text) ==
                        true) {
                      controller.isEnter.value = false;
                      await controller.loadUser();
                    } else
                      errorPopup('Failed');
                      controller.isEnter.value = false;
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  color: Color(0xFF1F5753),
                  child: SizedBox(
                    width: 33.w,
                    height: 5.h,
                    child: Center(
                      child: Text(
                        "Save",
                        style:
                            TextStyle(color: Colors.white, fontSize: 15.0.sp),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
