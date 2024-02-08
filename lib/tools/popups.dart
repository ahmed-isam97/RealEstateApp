import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/Constans/strings.dart';
import 'package:real_state_app/Views/homeScreen.dart';
import 'package:real_state_app/Views/login%20page.dart';
import 'package:sizer/sizer.dart';

void errorPopup(String content) {
  Get.defaultDialog(
    title: '',
    content: SizedBox(
      height: 30.h,
      width: 30.w,
      child: Text(
       content,
       textAlign: TextAlign.center,
       style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
    ),
  );
}

void signUpPopup(String content , bool check) {
  Get.defaultDialog(
    title: '',
    content: InkWell(
      onTap: () {
        check ? Get.to(LoginPage()) : Get.back();
        //? Will Go To Transactions page

      },
      child: SizedBox(
        height: 30.h,
        width: 30.w,
        child: Text(
          content,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
      ),
    ),
  );
}
