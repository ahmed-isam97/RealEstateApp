import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'CreateNewPassword.dart';
import 'PhoneVerification.dart';

class ForgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Forgot Password",
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
          padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 00.0),
          child: Center(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.sentiment_dissatisfied, size : 50,color: Color(0xFF1F5753)),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                    IconButton(
                      icon: const Icon(Icons.sentiment_satisfied_alt,size : 50),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                    IconButton(
                      icon: const Icon(Icons.sentiment_very_satisfied_outlined,size : 50),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                  ],
                ),
                SizedBox(height: 3.0.h,),
                Text(
                  "Please enter the verification code",
                  style: TextStyle(
                    fontSize: 15
                  ),
                ),
                SizedBox(height: 3.0.h,),
                Text(
                  "A verification code has been sent to \n"
                  "the following number +2499*******2",
                  style: TextStyle(
                      fontSize: 15
                  ),
                ),
                SizedBox(height: 2.0.h,),
                TextField(
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

                GestureDetector(
                  onTap: () {
                    Get.off(PhoneVerification());
                  },
                  child: new Text("Didnot recive a code? Resend",
                    style: TextStyle(
                        fontSize: 15
                    ),
                  ),

                ),

                SizedBox(height: 40.0.h,),
                MaterialButton(
                  onPressed: () {
                    Get.off(CreateNewPassword());
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
