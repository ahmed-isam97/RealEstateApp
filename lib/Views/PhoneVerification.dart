import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'AccountVerified.dart';
import 'package:sizer/sizer.dart';

class PhoneVerification extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Phone verification",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF1F5753),
      ),
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(20.0, 100.0, 20.0, 00.0),
          child: Center(
            child: Column(
              children: [
                Text(
                  "Please enter the verification code",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
                SizedBox(height: 3.0.h,),
                Text(
                  "We've sent a 4 digit code to the\n"
                      "the number +2499*******2",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
                SizedBox(height: 2.0.h,),
                TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      hintText: '___-___',
                      contentPadding: EdgeInsets.only(left: 38.0.w,),
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 2.0.h,),
                Text(
                  "Didn't recive the SMS?\n"
                  "Request new code in 04:15",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[500]
                  ),
                ),
                SizedBox(height: 40.0.h,),
                MaterialButton(
                  onPressed: () {
                    Get.to(AccountVerified());
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5.0))),
                  color: Color(0xFF1F5753),
                  child: SizedBox(
                    width: 33.w,
                    height: 5.h,
                    child: Center(
                      child: Text(
                        "Next",
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
    );
  }
}
