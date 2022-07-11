

import 'package:appointments/common/get/routes/route_constants.dart';
import 'package:appointments/getx/view/appointments_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

abstract class AppViews{

  static GetPage appointmentsView = GetPage(name: kAppointmentsRoute, page: () => const AppointmentsView());

  static List<GetPage> views = [
    appointmentsView,
  ];
}