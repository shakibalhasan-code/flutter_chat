import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

import '../../controller/auth/auth_controller.dart';

class AppBindings {

  static Bindings bindings = BindingsBuilder((){
    Get.lazyPut(() => AuthController());
  });

}