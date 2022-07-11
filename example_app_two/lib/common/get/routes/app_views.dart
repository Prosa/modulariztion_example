
import 'package:appointments/getx/binding/apppointments_binding.dart';
import 'package:appointments/getx/view/appointments_view.dart';
import 'package:example_app_two/common/get/routes/route_constants.dart';
import 'package:example_app_two/getx/binding/home_binding.dart';
import 'package:example_app_two/getx/view/home_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppViews{

  static GetPage homeView = GetPage(name: kHomeViewRoute, page: () => const HomeView(), binding: HomeBinding());
  static GetPage appointmentsView = GetPage(name: kAppointmentsRoute, page: () => const AppointmentsView(), binding: AppointmentsBinding());

  static List<GetPage> views = [
    homeView,
    appointmentsView,
  ];
}