// To parse this JSON data, do
//
//     final project = projectFromJson(jsonString);

// To parse this JSON data, do
//
//     final properties = propertiesFromJson(jsonString);

import 'dart:convert';

PropertyModel propertyModelFromJson(String str) => PropertyModel.fromJson(json.decode(str));

String propertyModelToJson(PropertyModel data) => json.encode(data.toJson());

class PropertyModel {
  PropertyModel({
    this.description,
    this.category,
    this.lesaeDuration,
    this.type,
    this.location,
    this.area,
    this.paymentType,
    this.price,
    this.status,
    this.advancedPrice,
    this.rooms,
    this.availableUntil,
  });

  String ? description;
  dynamic category;
  dynamic lesaeDuration;
  dynamic type;
  String ? location;
  dynamic area;
  dynamic paymentType;
  dynamic price;
  String ? status;
  dynamic advancedPrice;
  dynamic rooms;
  dynamic availableUntil;

  factory PropertyModel.fromJson(Map<String, dynamic> json) => PropertyModel(
    description: json["description"],
    category: json["category"],
    lesaeDuration: json["lesae_duration"],
    type: json["type"],
    location: json["location"],
    area: json["area"],
    paymentType: json["payment_type"],
    price: json["price"],
    status: json["status"],
    advancedPrice: json["advanced_price"],
    rooms: json["rooms"],
    availableUntil: json["available_until"],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "category": category,
    "lesae_duration": lesaeDuration,
    "type": type,
    "location": location,
    "area": area,
    "payment_type": paymentType,
    "price": price,
    "status": status,
    "advanced_price": advancedPrice,
    "rooms": rooms,
    "available_until": availableUntil,
  };
}
