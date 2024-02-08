import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/Views/login%20page.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

import 'landing page.dart';
class Splashscreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    Timer(
        Duration(seconds: 5),
            () =>
                Get.off(LoginPage()),
            );
    return Scaffold(

      backgroundColor: Color(0xFF1F5753),
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/transperntbackground.png"),
              fit: BoxFit.fill ,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.70), BlendMode.darken),

            )
        ),
        child: Padding(

          padding: EdgeInsets.fromLTRB(60.0, 200.0, 60.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FadeInDown(
                duration: Duration(seconds: 3),
                child: Container(
                  child: Image.asset("assets/logo.png",
                    width: 50.0.w,
                    height: 30.0.h,
                  ),
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
