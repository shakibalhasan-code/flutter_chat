import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class CustomWidgetBase{

  static showCustomSnackbar(bool isSuccess, String message){
    Get.snackbar(isSuccess ? 'Success': 'Error', message, backgroundColor: isSuccess ? Colors.green: Colors.red, colorText: Colors.white);
  }

  static showLoadingDialog(){
    Get.dialog(Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(child:
        CircularProgressIndicator(strokeWidth: 8,color: Colors.white)),
    ));
  }
}