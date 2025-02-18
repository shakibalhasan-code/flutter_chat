import 'package:chat/views/auth/change_pass/change_pass_screen.dart';
import 'package:chat/views/auth/forget/forget_password.dart';
import 'package:chat/views/auth/signin/sign_in_screen.dart';
import 'package:chat/views/auth/signup/signup_screen.dart';
import 'package:chat/views/auth/verify/verification_screen.dart';
import 'package:chat/views/chat/chat_list_screen/chat_listScreen.dart';
import 'package:get/get.dart';

class AppRoutes {

  ///auth
  static String login = '/login';
  static String signup = '/signup';
  static String forget = '/forget';
  static String otpVerify = '/verify';
  static String changePass = '/changePass';

  ///main
  static String splash = '/splash';
  static String chatList = '/chatList';
  static String chat = '/chat';

  static List<GetPage> pages = [
    GetPage(name: login, page: ()=> SignInScreen()),
    GetPage(name: signup, page: ()=> SignUpScreen()),
    GetPage(name: forget, page: ()=> ForgotPasswordScreen()),
    GetPage(name: otpVerify, page: ()=> VerificationScreen()),
    GetPage(name: changePass, page: ()=> ChangePasswordScreen()),

    // GetPage(name: splash, page: ()=> SplashScreen()),
    GetPage(name: chatList, page: ()=> ChatListscreen()),
    // GetPage(name: chat, page: ()=> ChatScreen()),

  ];
}