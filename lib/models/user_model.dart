import 'dart:ffi';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  String? address;
  String? department;
  String? email;
  String? fcm_token;
  String? full_name;
  Bool? is_active;
  Timestamp? joining_date;
  String? profile_image;
  int? role;

  UserModel(
      {this.address,
      this.department,
      this.email,
      this.fcm_token,
      this.full_name,
      this.is_active,
      this.joining_date,
      this.profile_image,
      this.role});

  UserModel.fromJson(dynamic json) {
    address = json['address'];
    department = json['department'];
    email = json['email'];
    fcm_token = json['fcm_token'];
    full_name = json['full_name'];
    is_active = json['is_active'];
    joining_date = json['joining_date'];
    profile_image = json['profile_image'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['department'] = department;
    map['email'] = email;
    map['fcm_token'] = fcm_token;
    map['full_name'] = full_name;
    map['is_active'] = is_active;
    map['joining_date'] = joining_date;
    map['profile_image'] = profile_image;
    map['role'] = role;
    return map;
  }
}
