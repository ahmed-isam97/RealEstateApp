import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/Views/aboutus.dart';
import 'package:real_state_app/Views/profile.dart';
import 'package:real_state_app/getX/controller/AboutUsController.dart';
import 'package:real_state_app/tools/popups.dart';
import '../../Views/Favorites.dart';
import 'package:sizer/sizer.dart';
import '../../Views/Notifications.dart';
import '../../Views/Settings.dart';
import '../../Views/contactus.dart';
import 'package:real_state_app/getX/controller/userController.dart';

import '../Views/login page.dart';

class SideMenu extends GetView<UserController> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xFF1F5753),
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            InkWell(
              onTap: () {
                Get.to(Profile());
                },
              child: DrawerHeader(
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
                    SizedBox(height: 1.0.h,),
                    Text(
                      '${controller.users[0].fullName}',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  ListTile(
                    title: Text('Favorites',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18
                    ),
                    ),
                    onTap: () {
                      Get.to(Favorites());
                    },
                  ),
                  ListTile(
                    title: Text('Notifications',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                    onTap: () {
                      Get.to(Notifications());
                    },
                  ),
                  ListTile(
                    title: Text('Settings',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                    onTap: () {
                     Get.to(Settings());
                    },
                  ),
                  ListTile(
                    title: Text('Contact Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                     onTap : () async => {
                    if ((await Get.find<AboutUsController>().getAboutUs()) == true) {
                         Get.to(contactus())
                    }
                    else {
                      errorPopup('Failed')
                    }
                    },
                  ),
                  ListTile(
                    title: Text('About Us',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                    onTap: () => {Get.to(aboutus())},
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.only(right: 20),
                    child: Divider(
                      thickness: 1,
                      color: Colors.white
                    ),
                  ),
                  ListTile(
                    title: Text('Logout',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18
                      ),),
                    onTap: () => {Get.off(LoginPage())},
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
