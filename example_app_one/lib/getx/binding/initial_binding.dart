

import 'package:example_app_one/getx/controller/theme_controller.dart';
import 'package:get/instance_manager.dart';

class InitialBinding extends Bindings{
  @override
  void dependencies() {
    Get.put(ThemeController());
  }

}