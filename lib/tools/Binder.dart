import 'package:get/get.dart';
import 'package:real_state_app/getX/controller/check_controller.dart';
import 'package:real_state_app/getX/controller/propertiesController.dart';
import 'package:real_state_app/getX/controller/userController.dart';

import '../getX/controller/AboutUsController.dart';

class Binder extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => checkcontroller());
    Get.lazyPut(() => PropertiesController());
    Get.lazyPut(() => UserController());
    Get.lazyPut(() => AboutUsController());
  }

}