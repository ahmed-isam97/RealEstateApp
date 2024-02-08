import 'package:real_state_app/Constans/strings.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dioAsistant.dart';

class PropertyService {

  DioAsistant dioAsistant = DioAsistant();

  Future <List<dynamic>> fetchProperty() async{

    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      token = prefs.getString('token');
      dioAsistant.dio.options.headers["Authorization"] = "Bearer $token";
      var response = await dioAsistant.dio.get('property/');
      print(response.data);
      return response.data;
    } on DioError catch (e) {
      print(e.toString());
      throw e.message;
    }

  }
}