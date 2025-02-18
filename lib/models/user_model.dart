import 'package:flutter/cupertino.dart';

class UserModel {
  final String name;
  final String userId;
  final String email;

UserModel ({ required this.name,required this.userId,required this.email});

factory UserModel.fromJson(Map<String,dynamic> json){
  return UserModel(name: json['name'], userId: json['userId'], email: json['email']);
  }



}