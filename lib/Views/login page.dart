import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:real_state_app/Views/create_your_account.dart';
import 'package:real_state_app/Views/homeScreen.dart';
import 'package:real_state_app/Views/landing%20page.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/getX/controller/userController.dart';
import 'package:sizer/sizer.dart';
import '../Constans/strings.dart';
import '../getX/controller/propertiesController.dart';
import '../tools/popups.dart';
import 'ForgotPassword.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<UserController> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController phone_number = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Get.find<checkcontroller>();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Container(
          width: 100.0.w,
          height: 100.0.h,
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/background.jpg"),
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.77), BlendMode.darken),
          )),
          child: Padding(
            padding: EdgeInsets.fromLTRB(40.0, 30.0, 40.0, 00.0),
            child: Center(
              child: Column(
                children: [
                  Image.asset(
                    "assets/logo.png",
                    width: 50.0.w,
                    height: 30.0.h,
                  ),
                  SizedBox(height: 5.0.h),
                  Text(
                    "Welcome back !",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5.0.h),
                  Form(
                    key: formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter the Phone Number';
                            }
                            return null;
                          },
                          controller: phone_number,
                          keyboardType: TextInputType.phone,
                          style: TextStyle(
                            fontSize: 15.0.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            hintText: "Phone Number",
                            hintStyle: TextStyle(
                                fontSize: 15.0.sp, color: Colors.white),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF1F5753)),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.0.h),
                        Obx(
                          () => TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter Password';
                              }
                              return null;
                            },
                            controller: password,
                            obscureText: controller.confirmPasswordHide.value,
                            obscuringCharacter: '*',
                            style: TextStyle(
                                fontSize: 15.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                            decoration: InputDecoration(
                              suffixIcon:
                                  controller.confirmPasswordHide.value == true
                                      ? InkWell(
                                          onTap: () {
                                            controller.confirmPasswordHide
                                                .value = false;
                                          },
                                          child: Icon(
                                            Icons.visibility_off,
                                            size: 25,
                                            color: Colors.white,
                                          ))
                                      : InkWell(
                                          onTap: () {
                                            controller.confirmPasswordHide
                                                .value = true;
                                          },
                                          child: Icon(Icons.visibility,
                                              size: 25, color: Colors.white)),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  fontSize: 15.0.sp, color: Colors.white),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0xFF1F5753)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.0.h),
                  GestureDetector(
                    onTap: () {
                      Get.off(ForgotPassword());
                    },
                    child: new Text(
                      "Foreget Password",
                      style: TextStyle(
                          fontSize: 15.0.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 10.0.h),
                  GestureDetector(
                    onTap: () {
                      Get.off(create_your_account());
                    },
                    child: new Text(
                      "Dont have Account ? Sign Up",
                      style: TextStyle(fontSize: 15.sp, color: Colors.white),
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  Obx(
                    () => Visibility(
                        visible: controller.isEnter.value,
                        child: CircularProgressIndicator()),
                  ),
                  SizedBox(height: 2.0.h),
                  MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        controller.isEnter.value = true;
                        if (await controller.login(
                            phone_number.text, password.text) ==
                            true) {
                          await controller.loadUser().then((value) {
                            controller.isEnter.value = false;
                            Get.off(LandingPage());
                          });
                        } else {
                          errorPopup(errorMessage);
                          controller.isEnter.value = false;
                        }
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    color: Color(0xFF1F5753),
                    child: SizedBox(
                      width: 33.0.w,
                      height: 7.0.h,
                      child: Center(
                        child: Text(
                          "Sign In",
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.0.sp),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
