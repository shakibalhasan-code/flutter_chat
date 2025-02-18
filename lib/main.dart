import 'package:chat/core/utils/app_routes.dart';
import 'package:chat/core/utils/binding.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.cupertino,
      debugShowCheckedModeBanner: false,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.login,
      initialBinding: AppBindings.bindings,
    );
  }
}
