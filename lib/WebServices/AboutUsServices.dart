import 'package:get/get.dart';
import 'package:real_state_app/Constans/strings.dart';
import 'package:dio/dio.dart';
import 'package:real_state_app/getX/controller/userController.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dioAsistant.dart';

class AboutUsServices {

  DioAsistant dioAsistant = DioAsistant();

  Future<List<dynamic>> getAboutUs() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('token');
    try {
      dioAsistant.dio.options.headers["Authorization"] = "Bearer $token";
      var response = await dioAsistant.dio.get('contact/');
      print(response.data);
      return response.data;
    } on DioError catch (e) {
      print(e.toString());
      throw e.message;
    }

  }
}