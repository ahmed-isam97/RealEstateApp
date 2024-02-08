import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/AboutUsController.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
class contactus extends GetView<AboutUsController> {

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
          padding: EdgeInsets.fromLTRB(10.0, 50.0, 10.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/logo_icon.png",
                width: 50.0.w,
                height: 30.0.h,
              ),
              Container(
                width: 100.w,
                height: 50.h,
                child: Card(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.email_outlined, size: 30 ,color: Color(0xFF1F5753)),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                              ),
                              Text(
                                "${controller.aboutus[0].email}",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.phone, size: 30 ,color: Color(0xFF1F5753)),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                              ),
                              Text(
                                "${controller.aboutus[0].phoneNumber}",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.location_on_outlined, size: 30 ,color: Color(0xFF1F5753)),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                              ),
                              Text(
                                "${controller.aboutus[0].locaton}",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.vpn_lock, size: 30 ,color: Color(0xFF1F5753)),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                              ),
                              Text(
                                "${controller.aboutus[0].website}",
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                          SizedBox(height: 1.0.h),
                          SizedBox(height: 1.0.h),
                          SizedBox(height: 1.0.h),
                          SizedBox(height: 1.0.h),
                          Text(
                            "Get in touch with us",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              IconButton(
                                icon: const Icon(EvilIcons.sc_facebook, size: 30 ,color: Color(0xFF1F5753)),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                              ),
                              IconButton(
                                icon: const Icon(FontAwesome.whatsapp, size: 30 ,color: Color(0xFF1F5753)),
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                },
                                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                              ),
                            ],
                          )
                        ],
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
