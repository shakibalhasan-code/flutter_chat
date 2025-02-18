import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiServices extends GetxService{

 static  Future<http.Response> getData (String url)async{
    var response = await http.get(Uri.parse(url));
    return response;
  }

 static Future<http.Response> postData(
     String url, Map<String, dynamic>? body, Map<String, String>? header) async {
   var response = await http.post(
     Uri.parse(url),
     headers: header,
     body: jsonEncode(body), // Convert body to JSON
   );
   return response;
 }

}