

import 'package:example_app_two/common/get/routes/route_constants.dart';
import 'package:example_app_two/getx/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:get/route_manager.dart';

class HomeView extends GetView<HomeController>{

  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text('My Example App 1',
            style: TextStyle(
            fontSize: MediaQueryData.fromWindow(WidgetsBinding.instance.window).size .width* 0.015,
      ),),
          ),
          ElevatedButton(onPressed: () {
            Get.toNamed(kAppointmentsRoute);
          }, child: const Text('Appointments'))
        ],
      ),

    );
  }

}