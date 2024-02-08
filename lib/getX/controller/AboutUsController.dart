import 'package:get/get.dart';
import 'package:real_state_app/Constans/strings.dart';
import 'package:real_state_app/Data/Models/AboutUsModet.dart';
import 'package:real_state_app/Data/Models/userModel.dart';
import 'package:real_state_app/Repository/AboutUsRepo.dart';
import 'package:real_state_app/Repository/userRepo.dart';
import 'package:real_state_app/Views/homeScreen.dart';
import 'package:real_state_app/Views/profile.dart';
import 'package:real_state_app/WebServices/AboutUsServices.dart';
import 'package:real_state_app/WebServices/dioAsistant.dart';
import 'package:dio/dio.dart';
import 'package:real_state_app/WebServices/userServices.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../tools/popups.dart';

class AboutUsController extends GetxService {
  DioAsistant dioAsistant = DioAsistant();

  RxBool isLoaded = false.obs;

  AboutUsRepo aboutUsRepo = AboutUsRepo(AboutUsServices());
  late List<AboutUsModel> aboutus = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future <bool> getAboutUs() async {
    await aboutUsRepo.getAboutUs().then((_aboutus) {
      isLoaded(true);
      aboutus = _aboutus;
    }
    );
    print("**********"+"$aboutus");
    return true;
  }
}
