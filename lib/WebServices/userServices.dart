import 'package:get/get.dart';
import 'package:real_state_app/Constans/strings.dart';
import 'package:dio/dio.dart';
import 'package:real_state_app/getX/controller/userController.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dioAsistant.dart';

class UserService {

  DioAsistant dioAsistant = DioAsistant();

  Future<List<dynamic>> getUser() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    uuid = prefs.getString('uuid');
    token = prefs.getString('token');
    try {
      dioAsistant.dio.options.headers["Authorization"] = "Bearer $token";
      var response = await dioAsistant.dio.get('user/?uuid=$uuid');
      print(response.data);
      return response.data;
    } on DioError catch (e) {
      print(e.toString());
      throw e.message;
    }

  }
}