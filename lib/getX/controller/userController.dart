import 'package:get/get.dart';
import 'package:real_state_app/Constans/strings.dart';
import 'package:real_state_app/Data/Models/userModel.dart';
import 'package:real_state_app/Repository/userRepo.dart';
import 'package:real_state_app/Views/homeScreen.dart';
import 'package:real_state_app/Views/landing%20page.dart';
import 'package:real_state_app/Views/profile.dart';
import 'package:real_state_app/WebServices/dioAsistant.dart';
import 'package:dio/dio.dart';
import 'package:real_state_app/WebServices/userServices.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../tools/errorMessage.dart';
import '../../tools/popups.dart';

class UserController extends GetxService {
  DioAsistant dioAsistant = DioAsistant();

  RxBool isLoaded = false.obs;
  RxBool isEnter  = false.obs;
  RxBool passwordHide = true.obs;
  RxBool confirmPasswordHide = true.obs;
  UserRepo userRepo = UserRepo(UserService());
  late List<UserModel> users = [];

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  Future <bool> getUser() async {

    await userRepo.getUser().then((_users) {
      isLoaded(true);
      users = _users;
    }
    );
    print("**********"+"$users");
    return true;
  }

  Future loadUser() async {

    if (await getUser() ==
        true) {
      Get.off(LandingPage());
    }
    else {
      statusCode = 0;
      message(statusCode);
      errorPopup(errorMessage);
    }
  }

  Future <bool> newUser(
      String password,
      String password2,
      String username,
      String fullname,
      String brith_date,
      String organization,
      String phone_number,
      String gender,
      String email
      ) async {
    Map data = {
      "password": password,
      "password2": password2,
      "username": username,
      "full_name": fullname,
      "organization": organization,
      "phone_number": phone_number,
      "gender": gender,
      "brith_date": brith_date,
      "email": email,
      "image": null,
    };
    try {
      try {
        var response = await dioAsistant.dio.post('signup/', data: data);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        print(response.data.toString());
        return true;
      } on DioError catch (e) {
        print(e.toString());
        message(e.response!.statusCode!);
        //Message(statusCode);
        return false;
      }
    } catch (e) {
      statusCode = 0;
      message(statusCode);
      return false;
      // TODO
    }
  }

  Future <bool> login(String phone_number , String password) async{
    Map data = {
      "password": password,
      "phone_number": phone_number,
    };
    try {
      try {
        var response = await dioAsistant.dio.post('token/', data: data);
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('token', response.data["access"]);
        prefs.setString('uuid', response.data["uuid"]);
        print(response);
        return true;
      } on DioError catch (e) {
        print(e.toString());
        print("//////////////////");
        statusCode = e.response!.statusCode;
        print(statusCode);
        message(statusCode);
        return false;
        throw e.message;
      }
    } catch (e) {
      statusCode = 0;
      message(statusCode);
      return false;
      // TODO
    }
  }

  Future <bool> updateUser(
      String fullname,
      String brith_date,
      String gender,
      String email
      ) async {
    Map data = {
      "full_name": fullname,
      "gender": gender,
      "brith_date": brith_date,
      "email": email,
    };
    try {
      try {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        uuid = prefs.getString('uuid');
        token = prefs.getString('token');
        dioAsistant.dio.options.headers["Authorization"] = "Bearer $token";
        var response = await dioAsistant.dio.patch('user/$uuid/', data: data);
        print(response.data.toString());
        return true;
      } on DioError catch (e) {
        print(e.toString());
        return false;
        throw e.message;
      }
    } catch (e) {
      statusCode = 0;
      message(statusCode);
      return false;
      // TODO
    }
  }

}
