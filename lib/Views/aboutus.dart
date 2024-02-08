import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../getX/controller/AboutUsController.dart';

class aboutus extends GetView<AboutUsController> {

  List<String> warnning = [
    'Brief description about the company',
    'Brief description about the company',
    'Brief description about the company',
    'Brief description about the company',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Color(0xFF1F5753),
      body: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("assets/transperntbackground.png"),
              fit: BoxFit.fill ,colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.77), BlendMode.darken),

            )
        ),
        child: Padding(

          padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo_icon.png",
                width: 50.0.w,
                height: 30.0.h,
              ),
              Container(
                width: 100.w,
                height: 33.h,
                child: Card(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 50, 40, 20),
                        child: Text('${controller.aboutus[0].description}',
                        style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold
                          ),
                          textAlign: TextAlign.center,
                        ),
                      )
                ),
              ),

            ],
          ),

        ),
      ),
    );
  }
}
