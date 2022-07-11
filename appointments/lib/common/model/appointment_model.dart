class AppointmentModel {
  final String title;
  final String subTitle;

  const AppointmentModel({required this.title, required this.subTitle});

  //Few static appointments for the example, you can fill them with real data

  static List<AppointmentModel> appointments = [
    const AppointmentModel(
        title: 'Appointment 1', subTitle: 'Subtitle of appointment1'),
    const AppointmentModel(
        title: 'Appointment 2', subTitle: 'Subtitle of appointment2'),
    const AppointmentModel(
        title: 'Appointment 3', subTitle: 'Subtitle of appointment3'),
    const AppointmentModel(
        title: 'Appointment 4', subTitle: 'Subtitle of appointment4'),
  ];
}
