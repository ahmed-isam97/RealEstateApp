import 'package:flutter/material.dart';
import 'package:real_state_app/Views/profile.dart';
import 'package:real_state_app/tools/Binder.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'Views/AccountVerified.dart';
import 'Views/CreateNewPassword.dart';
import 'Views/EditProfile.dart';
import 'Views/Filters.dart';
import 'Views/ForgotPassword.dart';
import 'Views/MY_Propraties.dart';
import 'Views/PhoneVerification.dart';
import 'Views/Settings.dart';
import 'Views/SplashScreen.dart';
import 'Views/SuccessfullyPassword.dart';
import 'Views/add_new_property_1.dart';
import 'Views/add_new_property_2.dart';
import 'Views/add_new_property_3.dart';
import 'Views/contactus.dart';
import 'Views/create_your_account.dart';
import 'Views/homeScreen.dart';
import 'Views/landing page.dart';
import 'Views/login page.dart';
void main()async => runApp(Sizer( builder:(context , orientation , deviceType) => GetMaterialApp(
    initialBinding: Binder(),
    home: Splashscreen()
)));

