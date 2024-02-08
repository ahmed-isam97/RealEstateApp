import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'SuccessfullyPassword.dart';

class CreateNewPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create a new password",
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
                      icon: const Icon(Icons.sentiment_satisfied_alt,size : 50,color: Color(0xFF1F5753)),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                    IconButton(
                      icon: const Icon(Icons.sentiment_very_satisfied_outlined,size: 50),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                  ],
                ),
                SizedBox(height: 3.0.h,),
                Text(
                  "Almost done! Now you can set a new passwoed",
                  style: TextStyle(
                      fontSize: 16
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
                      hintText: 'New password',
                      contentPadding: EdgeInsets.only(left: 50.0),
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 3.0.h,),
                TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[500]),
                      hintText: 'Confirm password',
                      contentPadding: EdgeInsets.only(left: 50.0),
                      fillColor: Colors.white70),
                ),
                SizedBox(height: 40.0.h,),
                MaterialButton(
                  onPressed: () {
                    Get.to(SuccessfullyPassword());
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
