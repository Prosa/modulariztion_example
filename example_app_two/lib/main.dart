import 'package:example_app_two/common/get/routes/app_views.dart';
import 'package:example_app_two/common/get/routes/route_constants.dart';
import 'package:example_app_two/getx/binding/initial_binding.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:template/template.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Example 2',
      //You can simply add a new view by:
      // Step 1: Adding a new route into ../common/get/routes/route_constants.dart
      // Step 2: Creating a controller file into ../get/controller folder
      // Step 2a: Developing the controller class that will extends the original GetxController class
      // Step 3: Creating a new binding file into ../get/binding folder
      // Step 3a: Developing the binding class that will extends the original Binding class from the get package
      // Step 3b: Lazy putting the controller you created inside the overridden dependencies method
      // Step 4: Creating the view file into ../get/view folder
      // Step 4a Developing the view class that will extends the original GetView<Controller> class with the controller you just created into <>
      // Step 5: Creating a new static GetPage variable into ../common/get/routes/app_view.dart file
      // Step 5a: Example -> static GetPage homeView = GetPage(name: kHomeViewRoute, page: () => const HomeView());
      getPages: AppViews.views,
      //for this example, I will start the app directly from the home page
      //if any app needs authentication, we need to start the app from the home page only if the user is already authenticated
      initialRoute: kHomeViewRoute,
      //Each app can also have its own defaultTransition
      defaultTransition: Transition.cupertino,
      //IMPORTANT:
      //Whichever styling, we want to apply, we should only apply it here
      //This will make our theme dynamic
      theme: Template.templateTestTwo.theme,
      //Initial binding are the instances that are used all through the application
      initialBinding: InitialBinding(),
    );
  }
}


