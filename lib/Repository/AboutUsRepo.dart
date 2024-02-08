import 'package:get/get.dart';
import 'package:real_state_app/Data/Models/userModel.dart';
import 'package:real_state_app/Views/aboutus.dart';
import 'package:real_state_app/WebServices/AboutUsServices.dart';
import 'package:real_state_app/WebServices/userServices.dart';
import 'package:real_state_app/getX/controller/userController.dart';

import '../Data/Models/AboutUsModet.dart';

class AboutUsRepo {

  late AboutUsServices aboutUsServices;

  AboutUsRepo(this.aboutUsServices);

  Future <List<AboutUsModel>>getAboutUs() async {
    final aboutus = await aboutUsServices.getAboutUs();
    return aboutus.map((_aboutus) => AboutUsModel.fromJson(_aboutus)).toList();
  }
}