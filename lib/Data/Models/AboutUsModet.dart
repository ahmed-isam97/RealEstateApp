// To parse this JSON data, do
//
//     final aboutUsModel = aboutUsModelFromJson(jsonString);

import 'dart:convert';

AboutUsModel aboutUsModelFromJson(String str) => AboutUsModel.fromJson(json.decode(str));

String aboutUsModelToJson(AboutUsModel data) => json.encode(data.toJson());

class AboutUsModel {
  AboutUsModel({
    this.id,
    this.email,
    this.phoneNumber,
    this.locaton,
    this.website,
    this.description,
  });

  int ? id;
  String ? email;
  String ? phoneNumber;
  String ? locaton;
  String ? website;
  String ? description;

  factory AboutUsModel.fromJson(Map<String, dynamic> json) => AboutUsModel(
    id: json["id"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    locaton: json["locaton"],
    website: json["website"],
    description: json["description"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "phone_number": phoneNumber,
    "locaton": locaton,
    "website": website,
    "description": description,
  };
}
