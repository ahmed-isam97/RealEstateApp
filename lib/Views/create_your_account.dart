import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:real_state_app/Views/login%20page.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/getX/controller/userController.dart';
import 'package:sizer/sizer.dart';

import '../Constans/strings.dart';
import '../tools/popups.dart';

class create_your_account extends GetView<UserController> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController fullname = TextEditingController();
  final TextEditingController phonenumber = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController gender = TextEditingController();
  final TextEditingController birthdate = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Get.find<checkcontroller>();
    List<String> days = List.generate(31, (index) => (index + 1).toString());
    List<String> month = List.generate(12, (index) => (index + 1).toString());
    List<String> years =
        List.generate(45, (index) => (index + 1980).toString());
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF1F5753),
        title: Center(child: Text("Create your account")),
      ),
      backgroundColor: Colors.grey[100],
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0.0),
            child: Center(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                        child: Text(
                          "Full name",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 8.h,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Full Name';
                        }
                        return null;
                      },
                      controller: fullname,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          hintText: 'Full name',
                          contentPadding: EdgeInsets.only(left: 50.0),
                          fillColor: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                        child: Text(
                          "Phone Number",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 8.h,
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter Phone Number';
                        }
                        return null;
                      },
                      controller: phonenumber,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          filled: true,
                          hintStyle: TextStyle(color: Colors.grey[500]),
                          hintText: 'Phone Number',
                          contentPadding: EdgeInsets.only(left: 50.0),
                          fillColor: Colors.white70),
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                            child: Text(
                              "Email address",
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 8.h,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Email Address';
                            }
                            return null;
                          },
                          controller: email,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              hintText: 'username@mail.com',
                              contentPadding: EdgeInsets.only(left: 50.0),
                              fillColor: Colors.white70),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                        child: Text(
                          "Gender",
                        ),
                      ),
                    ],
                  ),
                  DropdownButtonFormField<String>(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Gender';
                      }
                      return null;
                    },
                    hint: Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: const Text('Gender'),
                    ),

                    decoration: const InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12)),
                            borderSide: BorderSide(color: Color(0xff444444))),
                        fillColor: Colors.white70,
                        filled: true),

                    items: <String>['Male', 'Female'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        onTap: () {
                          gender.text = value;
                        },
                        child: Text(value),
                      );
                    }).toList(),

                    // value:,

                    onChanged: (_) {},
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                        child: Text(
                          "Birthdate",
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 25.w,
                        child: DropdownButtonFormField<String>(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Day';
                            }
                            return null;
                          },
                          hint: const Text('  Day'),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide:
                                      BorderSide(color: Color(0xff444444))),
                              fillColor: Colors.white70,
                              filled: true),

                          items: days.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              onTap: () {
                                if (int.parse(value) < 10) {
                                  birthdate.text += "0";
                                  birthdate.text += value;
                                } else {
                                  birthdate.text += value;
                                }
                                birthdate.text += "-";
                              },
                              child: Text(value),
                            );
                          }).toList(),

                          // value:,

                          onChanged: (_) {},
                        ),
                      ),
                      SizedBox(width: 0.5.h),
                      Container(
                        width: 36.w,
                        child: DropdownButtonFormField<String>(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Month';
                            }
                            return null;
                          },
                          hint: const Text('   Month'),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide:
                                      BorderSide(color: Color(0xff444444))),
                              fillColor: Colors.white70,
                              filled: true),

                          items: month.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              onTap: () {
                                if (int.parse(value) < 10) {
                                  birthdate.text += "0";
                                  birthdate.text += value;
                                } else {
                                  birthdate.text += value;
                                }
                                birthdate.text += "-";
                              },
                              child: Text(value),
                            );
                          }).toList(),

                          // value:,

                          onChanged: (_) {},
                        ),
                      ),
                      SizedBox(width: 1.0.w),
                      Container(
                        width: 25.w,
                        child: DropdownButtonFormField<String>(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Enter Year';
                            }
                            return null;
                          },
                          hint: const Text('   Years'),
                          decoration: const InputDecoration(
                              contentPadding: EdgeInsets.only(left: 12),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)),
                                  borderSide:
                                      BorderSide(color: Color(0xff444444))),
                              fillColor: Colors.white70,
                              filled: true),

                          items: years.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              onTap: () {
                                birthdate.text += value;
                              },
                              child: Text(value),
                            );
                          }).toList(),

                          // value:,

                          onChanged: (_) {},
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                        child: Text(
                          "Password",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 8.0.h,
                    child: Obx( () =>
                     TextFormField(
                       validator: (value) {
                         if (value == null || value.isEmpty) {
                           return 'Please enter Password';
                         }
                         /*else if(password != password2){
                           return 'the tow passwords is not equals';
                         }*/
                         return null;
                       },
                        controller: password,
                        obscureText: controller.passwordHide.value,
                        obscuringCharacter: '*',
                        decoration: InputDecoration(
                            suffixIcon: controller.passwordHide.value == true ?InkWell(
                              onTap: () {
                                controller.passwordHide.value = false;
                              },
                                child: Icon(Icons.visibility_off, size: 25))
                            : InkWell(
                              onTap: () {
                                controller.passwordHide.value = true;
                              },
                                child: Icon(Icons.visibility, size: 25)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            filled: true,
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            hintText: 'Password',
                            contentPadding: EdgeInsets.only(left: 50.0),
                            fillColor: Colors.white70),
                      ),
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 0, 10.0),
                        child: Text(
                          "Confirm Password",
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 8.0.h,
                    child: Obx( () =>
                        TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter Confirm Password';
                            }
                            /*else if(password != password2){
                              return 'the tow passwords is not equals';
                            }*/
                            return null;
                          },
                          controller: password2,
                          obscureText: controller.confirmPasswordHide.value,
                          obscuringCharacter: '*',
                          decoration: InputDecoration(
                              suffixIcon: controller.confirmPasswordHide.value == true ?InkWell(
                                  onTap: () {
                                    controller.confirmPasswordHide.value = false;
                                  },
                                  child: Icon(Icons.visibility_off, size: 25))
                                  : InkWell(
                                  onTap: () {
                                    controller.confirmPasswordHide.value = true;
                                  },
                                  child: Icon(Icons.visibility, size: 25)),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[500]),
                              hintText: 'Confirm Password',
                              contentPadding: EdgeInsets.only(left: 50.0),
                              fillColor: Colors.white70),
                        ),
                    ),
                  ),
                  SizedBox(height: 1.0.h),
                  InkWell(
                      onTap: () {
                        Get.off(LoginPage());
                      },
                      child: Text("Already have account? Sign in")),
                  SizedBox(height: 1.0.h),
                  Obx (() =>
                      Visibility(
                          visible: controller.isEnter.value,
                          child: CircularProgressIndicator()),
                  ),
                  SizedBox(height: 1.0.h),
                  MaterialButton(
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        // If the form is valid, display a snackbar. In the real world,
                        // you'd often call a server or save the information in a database.
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')),
                        );
                        controller.isEnter.value = true;
                        if (await controller.newUser(
                            password.text,
                            password2.text,
                            fullname.text,
                            fullname.text,
                            birthdate.text,
                            "organization",
                            phonenumber.text,
                            gender.text,
                            email.text) ==
                            true) {
                          signUpPopup('Successfully Done',true);
                          controller.isEnter.value = false;
                        }
                        else signUpPopup(errorMessage,false);
                        controller.isEnter.value = false;
                      }
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    color: Color(0xFF1F5753),
                    child: SizedBox(
                      width: 33.w,
                      height: 5.h,
                      child: Center(
                        child: Text(
                          "Sign Up",
                          style:
                              TextStyle(color: Colors.white, fontSize: 15.0.sp),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
