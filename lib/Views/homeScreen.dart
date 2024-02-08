import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/getX/controller/propertiesController.dart';
import 'package:sizer/sizer.dart';

import '../tools/SideMenu.dart';
import '../tools/home_for_rent.dart';
import '../tools/home_for_sale.dart';
import '../tools/rentButton.dart';
import '../tools/saleButton.dart';

class homeScreen extends GetView<checkcontroller> {

  @override
  Widget build(BuildContext context) {
    Get.find<PropertiesController>();
    return Scaffold(
      drawer: Container(
        child: Drawer(
          child: SideMenu(),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(
            color: Color(0xFF1F5753),
          ),
        ),

        centerTitle: true,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF1F5753)),
      ),
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: EdgeInsets.fromLTRB(5.0, 20.0, 5.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              child: Row(
                children: [
                  Container(
                    height: 7.7.h,
                    color: Color(0xFF1F5753),
                    child: IconButton(
                      icon: const Icon(Icons.menu_outlined, color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                  ),
                  Container(
                    width: 68.3.w,
                    height: 7.7.h,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[500]),
                        hintText: 'Search',
                        fillColor: Colors.white70,
                      ),
                    ),
                  ),
                  Container(
                    height: 7.7.h,
                    color: Color(0xFF1F5753),
                    child: IconButton(
                      icon: const Icon(Icons.search, color: Colors.white),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 1.0.h,),
            Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.apartment, size: 30 ,color: Color(0xFF1F5753)),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        ),
                        Text(
                          "Apartment",
                          style: TextStyle(
                            fontSize: 10.0,
                          ),
                        ),
                        SizedBox(height: 1.0.h),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.house, size: 30 ,color: Color(0xFF1F5753)),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        ),
                        Text(
                          "House",
                          style: TextStyle(
                              fontSize: 10.0
                          ),
                        ),
                        SizedBox(height: 1.h),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.safety_divider, size: 30 ,color: Color(0xFF1F5753)),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        ),
                        Text(
                          "Studio",
                          style: TextStyle(
                              fontSize: 10.0
                          ),
                        ),
                        SizedBox(height: 1.0.h),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.store, size: 30 ,color: Color(0xFF1F5753)),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        ),
                        Text(
                          "Store",
                          style: TextStyle(
                              fontSize: 10.0
                          ),
                        ),
                        SizedBox(height: 1.0.h),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Column(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.villa, size: 30 ,color: Color(0xFF1F5753)),
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                        ),
                        Text(
                          "Villa",
                          style: TextStyle(
                              fontSize: 10.0
                          ),
                        ),
                        SizedBox(height: 1.0.h),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 1.0.h),
            Container(
              width: 100.w,
              height: 57.h,
              child: Obx(
                  () => controller.isChecked.value ? home_for_sale() : home_for_rent()
              ),
            ),
            Container(
              width: 100.w,
              child: Obx(
                      () => controller.isChecked.value ? SaleButton() : RentButton()
              ),
            ),
          ],
        ),

      ),
    );
  }
}
