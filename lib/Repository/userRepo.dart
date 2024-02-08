import 'package:get/get.dart';
import 'package:real_state_app/Data/Models/userModel.dart';
import 'package:real_state_app/WebServices/userServices.dart';
import 'package:real_state_app/getX/controller/userController.dart';

class UserRepo {

  late UserService userService;

  UserRepo(this.userService);

  Future <List<UserModel>>getUser() async {
    final users = await userService.getUser();
    return users.map((_users) => UserModel.fromJson(_users)).toList();
  }
}