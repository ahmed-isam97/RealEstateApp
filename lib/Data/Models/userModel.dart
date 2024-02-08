// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    this.id,
    this.password,
    this.username,
    this.fullName,
    this.organization,
    this.phoneNumber,
    this.gender,
    this.brithDate,
    this.email,
    this.image,
    this.isActive,
    this.staff,
    this.admin,
    this.lastLogin,
    this.registrationDatetime,
  });

  int ? id;
  String ? password;
  String ? username;
  String ? fullName;
  String ? organization;
  String ? phoneNumber;
  String ? gender;
  dynamic brithDate;
  String ? email;
  String ? image;
  bool ? isActive;
  bool ? staff;
  bool ? admin;
  DateTime ? lastLogin;
  DateTime ? registrationDatetime;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
    id: json["id"],
    password: json["password"],
    username: json["username"],
    fullName: json["full_name"],
    organization: json["organization"],
    phoneNumber: json["phone_number"],
    gender: json["gender"],
    brithDate: json["brith_date"],
    email: json["email"],
    image: json["image"],
    isActive: json["is_active"],
    staff: json["staff"],
    admin: json["admin"],
    lastLogin: DateTime.parse(json["last_login"]),
    registrationDatetime: DateTime.parse(json["registration_datetime"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "password": password,
    "username": username,
    "full_name": fullName,
    "organization": organization,
    "phone_number": phoneNumber,
    "gender": gender,
    "brith_date": brithDate,
    "email": email,
    "image": image,
    "is_active": isActive,
    "staff": staff,
    "admin": admin,
    "last_login": lastLogin!.toIso8601String(),
    "registration_datetime": registrationDatetime!.toIso8601String(),
  };
}
