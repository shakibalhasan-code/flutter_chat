import 'package:shared_preferences/shared_preferences.dart';

class MyPrefData {


  static setData(String key, String value)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString(key, value);
  }

  static Future<String> getData(String key)async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(key)!;
  }


}