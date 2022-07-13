import 'package:appointments/common/get/routes/app_views.dart';
import 'package:appointments/common/get/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:template/template.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      getPages: AppViews.views,
      theme: Template.templateTestOne.theme,
      initialRoute: kAppointmentsRoute,
    );
  }
}


