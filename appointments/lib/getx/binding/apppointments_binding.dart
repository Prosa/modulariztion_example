

import 'package:appointments/getx/controller/appointments_controller.dart';
import 'package:get/instance_manager.dart';

class AppointmentsBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => AppointmentsController());
  }

}