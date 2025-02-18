import 'dart:convert';

import 'package:chat/core/services/api_services.dart';
import 'package:chat/core/services/pref_shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/utils/app_constant.dart';
import '../../core/utils/app_routes.dart';
import '../../models/user_model.dart';
import '../../views/glob_base/custom_widgets_based.dart';

class AuthController extends GetxController{


  RxBool isLoading = false.obs;

  final emailTextController = TextEditingController();
  final passTextController = TextEditingController();
  final nameTextController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> registerUser() async {
    try {
      isLoading.value = true;

      final body = {
        'name': nameTextController.text.trim(),
        'email': emailTextController.text.trim(),
        'password': passTextController.text.trim(),
      };

      final header = {
        'Content-Type': 'application/json'
      };

      var response = await ApiServices.postData(AppConstant.signUp, body, header); // Add `await`

      print('Response Status Code: ${response.statusCode}');
      print('Response Body: ${response.body}');

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        await MyPrefData.setData(AppConstant.token, data['token']);
        print('Token: ${data['token']}');
        Get.toNamed(AppRoutes.login);
      } else {
        CustomWidgetBase.showCustomSnackbar(false, 'Error: ${response.statusCode}');
      }
    } catch (e) {
      print('==========>>>>>>> Error: $e');
      CustomWidgetBase.showCustomSnackbar(false, 'Something went wrong: $e');
    } finally {
      isLoading.value = false; // Ensure loading state resets after API call
    }
  }


}