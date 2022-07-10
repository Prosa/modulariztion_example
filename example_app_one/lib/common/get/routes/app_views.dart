
import 'package:example_app_one/common/get/routes/route_constants.dart';
import 'package:example_app_one/getx/view/home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppViews{

  static GetPage homeView = GetPage(name: kHomeViewRoute, page: () => const HomeView());

  static List<GetPage> views = [
    homeView,
  ];
}