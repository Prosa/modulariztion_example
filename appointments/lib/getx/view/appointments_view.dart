import 'package:appointments/common/model/appointment_model.dart';
import 'package:appointments/getx/controller/appointments_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:template/theme/widget/main_container.dart';

class AppointmentsView extends GetView<AppointmentsController> {
  const AppointmentsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointments'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: AppointmentModel.appointments
              .map(
                (e) => MainContainer(
                  width: double.infinity,
                  height: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        e.title,
                        //We can extend our themes by creating styles for each texts we need
                        //for example, here we are gonna need a widgetTitleTextStyle
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        e.subTitle,
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black45,
                        ),
                      ),
                    ],
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
