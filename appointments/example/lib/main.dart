import 'package:appointments/common/get/routes/app_views.dart';
import 'package:appointments/common/get/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:template/template.dart';


//IN SUCH EXAMPLES, WE WILL TEST MODULES
void main() async {

  await login();
  runApp(const MyApp());


}

Future login() async{
  await Future.delayed(const Duration(seconds: 1));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: Template.templateTestOne.theme,
      getPages: AppViews.views,
      initialRoute: kAppointmentsRoute,
    );
  }
}


